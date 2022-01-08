#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ROUND 13
#define SIZE 2
#define MASTER_KEY_SIZE 2
#define BLOCK_CNT 32
#define THREAD_SIZE 32

typedef unsigned char u8;
typedef unsigned int u32;


u32 MASTER_KEY[MASTER_KEY_SIZE * SIZE * BLOCK_CNT] = {0, };
u32 ROUND_KEY[(ROUND+1) * SIZE];
u32 PLAIN_TEXT[SIZE * BLOCK_CNT] = {0, };
u32 CIPHER_TEXT[SIZE * BLOCK_CNT] = {0, };

__device__ void key_add(u8* X, u8* rk)
{
	for(int i=0;i<8;i++)
		X[i] ^= rk[i];
}

__device__ void S_layer(u8 *X)
{
    u8 T[3] = { 0, };
    //(MSB: x[7], LSB: x[0]) 
    // Input: x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0] 
    //S5_1
    X[5] ^= (X[7] & X[6]);
    X[4] ^= (X[3] & X[5]);
    X[7] ^= X[4];
    X[6] ^= X[3];
    X[3] ^= (X[4] | X[5]);
    X[5] ^= X[7];
    X[4] ^= (X[5] & X[6]);
    //S3
    X[2] ^= X[1] & X[0];
    X[0] ^= X[2] | X[1];
    X[1] ^= X[2] | X[0];
    X[2] = ~X[2];
    // Extend XOR
    X[7] ^= X[1];   X[3] ^= X[2];   X[4] ^= X[0];
    //S5_2
    T[0] = X[7];    T[1] = X[3];    T[2] = X[4];
    X[6] ^= (T[0] & X[5]);
    T[0] ^= X[6];
    X[6] ^= (T[2] | T[1]);
    T[1] ^= X[5];
    X[5] ^= (X[6] | T[2]);
    T[2] ^= (T[1] & T[0]);
    // Truncate XOR and bit change
    X[2] ^= T[0];   T[0] = X[1] ^ T[2]; X[1] = X[0]^T[1];   X[0] = X[7];    X[7] = T[0];
    T[1] = X[3];    X[3] = X[6];    X[6] = T[1];
    T[2] = X[4];    X[4] = X[5];    X[5] = T[2];
    // Output: (MSb) x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0] (LSb)
}

__device__ void R_layer(u8* X)
{
    X[1] = ((X[1] << 7)) | ((X[1] >> 1));
    X[2] = ((X[2] << 4)) | ((X[2] >> 4));
    X[3] = ((X[3] << 3)) | ((X[3] >> 5));
    X[4] = ((X[4] << 6)) | ((X[4] >> 2));
    X[5] = ((X[5] << 5)) | ((X[5] >> 3));
    X[6] = ((X[6] << 1)) | ((X[6] >> 7));
    X[7] = ((X[7] << 2)) | ((X[7] >> 6));
}

__device__ void inv_R_layer(u8* X)
{
	X[1] = ((X[1] << 1)) | ((X[1] >> 7));
	X[2] = ((X[2] << 4)) | ((X[2] >> 4));
	X[3] = ((X[3] << 5)) | ((X[3] >> 3));
	X[4] = ((X[4] << 2)) | ((X[4] >> 6));
	X[5] = ((X[5] << 3)) | ((X[5] >> 5));
	X[6] = ((X[6] << 7)) | ((X[6] >> 1));
	X[7] = ((X[7] << 6)) | ((X[7] >> 2));
}

__device__ void inv_S_layer(u8 *X)
{	//(MSB: x[7], LSB: x[0]) 
	// Input: x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0] 

	u8 T[3] = { 0, };

	T[0] = X[7]; X[7] = X[0]; X[0] = X[1]; X[1] = T[0];
	T[0] = X[7];	T[1] = X[6];	T[2] = X[5];
	// S52 inv
	X[4] ^= (X[3] | T[2]);
	X[3] ^= (T[2] | T[1]);
	T[1] ^= X[4];
	T[0] ^= X[3];
	T[2] ^= (T[1] & T[0]);
	X[3] ^= (X[4] & X[7]);
	//  Extended XOR
	X[0] ^= T[1]; X[1] ^= T[2]; X[2] ^= T[0];	
	T[0] = X[3]; X[3] = X[6]; X[6] = T[0];
	T[0] = X[5]; X[5] = X[4]; X[4] = T[0];
	//  Truncated XOR
	X[7] ^= X[1];	X[3] ^= X[2];	X[4] ^= X[0];
	// Inv_S5_1
	X[4] ^= (X[5] & X[6]);
	X[5] ^= X[7];
	X[3] ^= (X[4] | X[5]);
	X[6] ^= X[3];
	X[7] ^= X[4];
	X[4] ^= (X[3] & X[5]);
	X[5] ^= (X[7] & X[6]);
	// Inv_S3
	X[2] = ~X[2];
	X[1] ^= X[2] | X[0];
	X[0] ^= X[2] | X[1];
	X[2] ^= X[1] & X[0];
	 // Output: x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0]
}


__global__ void encrypt(u32* PLAIN_TEXT, u32* ROUND_KEY)
{
	int i=0;
	__shared__ u32 shared_RK[(ROUND+1) * SIZE];
	if(threadIdx.x <= (ROUND+1) * SIZE)
	{
		shared_RK[threadIdx.x] = ROUND_KEY[threadIdx.x];
	}	
	__syncthreads();

	u8* P = (u8*)(PLAIN_TEXT + (blockIdx.x * blockDim.x + threadIdx.x) * 2);
	u8* RK = (u8*)shared_RK;

	key_add(P, RK);
	printf("BEFORE\n");
	printf("%02x%02x%02x%02x %02x%02x%02x%02x\n", P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]);
	for(i=1;i<=ROUND;i++)
	{
		S_layer(P);
		R_layer(P);
		key_add(P, RK + (i * 8));
	}
	printf("AFTER\n");
	printf("%02x%02x%02x%02x %02x%02x%02x%02x\n\n", P[7], P[6], P[5], P[4], P[3], P[2], P[1], P[0]);
}

__global__ void decrypt(u32* CIPHER_TEXT, u32* ROUND_KEY)
{
	int i=0;
	__shared__ u32 shared_RK[(ROUND+1) * SIZE];
	if(threadIdx.x <= (ROUND+1) * SIZE)
	{
		shared_RK[threadIdx.x] = ROUND_KEY[threadIdx.x];
	}	
	__syncthreads();

	u8* C = (u8*)(CIPHER_TEXT + (blockIdx.x * blockDim.x + threadIdx.x) * 2);
	u8* RK = (u8*)shared_RK;

	printf("BEFORE\n");
	printf("%02x%02x%02x%02x, %02x%02x%02x%02x\n", C[7], C[6], C[5], C[4], C[3], C[2], C[1], C[0]);
	for(i=ROUND;i>0;i--)
	{
		key_add(C, RK + (i * 8));
		inv_R_layer(C);
		inv_S_layer(C);
	}
	key_add(C, RK);
	printf("AFTER\n");
	printf("%02x%02x%02x%02x, %02x%02x%02x%02x\n\n", C[7], C[6], C[5], C[4], C[3], C[2], C[1], C[0]);
}
/*
void getGapTime(struct timeval* start_time, struct timeval* end_time, struct timeval* gap_time)
{
	gap_time->tv_sec = end_time->tv_sec - start_time->tv_sec;
	gap_time->tv_usec = end_time->tv_usec - start_time->tv_usec;
	if(gap_time->tv_usec < 0)
 	{
		gap_time->tv_usec = gap_time->tv_usec + 1000000;
		gap_time->tv_sec -= 1;
	}
}

float timevalToFloat(struct timeval* time)
{
	double val;
	val = time->tv_sec;
	val += (time->tv_usec * 0.000001);
	return val;
}
*/
int main()
{
	u32 i, j, k;
	u32 RCON;

    // master key test vector
    MASTER_KEY[0] = 0x2E152297;
    MASTER_KEY[1] = 0x7E1D20AD;
    MASTER_KEY[2] = 0x779428D2;
    MASTER_KEY[3] = 0x6DC416DD;
	// generate round key
    RCON = 0;
	for(i=0;i<=ROUND;i++)
	{
		for(j=0;j<SIZE;j++)
			ROUND_KEY[i * SIZE + j] = MASTER_KEY[(SIZE * i + j) % (MASTER_KEY_SIZE * SIZE)];
		ROUND_KEY[SIZE * i] ^= RCON;
		RCON++;
	}
    for(k=0;k<BLOCK_CNT;k++)
	{
		// Plain text test vector
		PLAIN_TEXT[k * 2] = 0x1E270026;
		PLAIN_TEXT[k * 2 + 1] = 0x098552F6;
	}
    // encrypt

	u32 *dev_PLAIN_TEXT, *dev_ROUND_KEY;
	cudaMalloc((void**)&dev_PLAIN_TEXT, SIZE * BLOCK_CNT * sizeof(u32));
	cudaMalloc((void**)&dev_ROUND_KEY, (ROUND+1) * SIZE * sizeof(u32));

	cudaMemcpy(dev_PLAIN_TEXT, PLAIN_TEXT, SIZE * BLOCK_CNT * sizeof(u32), cudaMemcpyHostToDevice);
	cudaMemcpy(dev_ROUND_KEY, ROUND_KEY, (ROUND+1) * SIZE * sizeof(u32), cudaMemcpyHostToDevice);

    //struct timeval gpu_start, gpu_end, gap;
    //gettimeofday(&gpu_start, NULL);
	encrypt<<<BLOCK_CNT/THREAD_SIZE, THREAD_SIZE>>>(dev_PLAIN_TEXT, dev_ROUND_KEY);
	cudaDeviceSynchronize();
    //gettimeofday(&gpu_end, NULL);
    //getGapTime(&gpu_start, &gpu_end, &gap);
    //float f_gpu_gap = timevalToFloat(&gap);
    //printf("%.6f\n", f_gpu_gap);

	cudaMemcpy(CIPHER_TEXT, dev_PLAIN_TEXT, SIZE * BLOCK_CNT * sizeof(u32), cudaMemcpyDeviceToHost);

	cudaFree(dev_PLAIN_TEXT);
	cudaFree(dev_ROUND_KEY);
 
    /*
    for(i=0;i<BLOCK_CNT;i++)
    {
        printf("%08x %08x\n", CIPHER_TEXT[i * 2 + 1], CIPHER_TEXT[i * 2]);
    }
    
    u32 *dev_CIPHER_TEXT;
    cudaMalloc((void**)&dev_CIPHER_TEXT, SIZE * BLOCK_CNT * sizeof(u32));
    cudaMemcpy(dev_CIPHER_TEXT, CIPHER_TEXT, SIZE * BLOCK_CNT * sizeof(u32), cudaMemcpyHostToDevice);
    cudaMemcpy(dev_ROUND_KEY, ROUND_KEY, (ROUND+1) * SIZE * sizeof(u32), cudaMemcpyHostToDevice);
    decrypt<<<1, BLOCK_CNT>>>(dev_CIPHER_TEXT, dev_ROUND_KEY);
    cudaDeviceSynchronize();
    cudaMemcpy(PLAIN_TEXT, dev_CIPHER_TEXT, SIZE * BLOCK_CNT * sizeof(u32), cudaMemcpyDeviceToHost);

    cudaFree(dev_CIPHER_TEXT);
    cudaFree(dev_ROUND_KEY);

    for(i=0;i<BLOCK_CNT;i++)
    {
        printf("%08x %08x\n", PLAIN_TEXT[i * 2 + 1], PLAIN_TEXT[i * 2]);
    }
    */

	return 0;
}