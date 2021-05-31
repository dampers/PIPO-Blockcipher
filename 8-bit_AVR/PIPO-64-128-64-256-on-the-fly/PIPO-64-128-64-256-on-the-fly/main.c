#include <avr/io.h>


//#define PIPO64_128
// 1620 clock cycles for key gen and enc
// Program Memory Usage 	:	572 bytes   0.5 % Full
// Data Memory Usage 		:	26 bytes   0.6 % Full

#define PIPO64_256
// 2100 clock cycles for key gen and enc
// Program Memory Usage 	:	588 bytes   0.5 % Full
// Data Memory Usage 		:	42 bytes   1.0 % Full

#ifdef PIPO64_128
#define ROUND 13
#define MK_SIZE 8
#define RK_SIZE 56
#elif defined PIPO64_256
#define ROUND 17
#define MK_SIZE 16
#define RK_SIZE 72
#endif

typedef uint16_t u16;
typedef uint8_t u8;

extern void PIPO_ENC(u16 *pt, u16 *mk, u8 *rounds);

//u16 mk[MK_SIZE] = {0x2297, 0x2e15, 0x20ad, 0x7e1d, 0x28d2, 0x7794, 0x16dd, 0x6dc4};
u16 mk[MK_SIZE] = {0x2297, 0x2e15, 0x20ad, 0x7e1d, 0x28d2, 0x7794, 0x16dd, 0x6dc4, 0x5633, 0x26d1, 0x1206, 0x54A7, 0x6db5, 0x76a9, 0x3aa4, 0x009a};
u16 pt[4] = {0x0026, 0x1e27, 0x52f6, 0x0985};
u8 rounds = ROUND;
int main(void)
{
	PIPO_ENC(pt, mk, &rounds);
}