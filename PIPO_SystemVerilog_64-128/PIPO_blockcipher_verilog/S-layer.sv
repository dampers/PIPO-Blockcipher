import PIPODefinitions::*;

module S_layer(input state_t in, output state_t X);

byte_t [0:3] T;
always_comb
	begin
	for(int i=0;i<8;i++)
		begin
			X[i] = in[i];
		end
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
	
	X[7] ^= X[1];
	X[3] ^= X[2];
	X[4] ^= X[0];
	
	//S5_2
	T[0] = X[7];
	T[1] = X[3];
	T[2] = X[4];
	X[6] ^= (T[0] & X[5]);
	T[0] ^= X[6];
	X[6] ^= (T[2] | T[1]);
	T[1] ^= X[5];
	X[5] ^= (X[6] | T[2]);
	T[2] ^= (T[1] & T[0]);
	// Truncate XOR and bit change
	X[2] ^= T[0];
	T[0] = X[1] ^ T[2];
	X[1] = X[0]^T[1];
	X[0] = X[7];
	X[7] = T[0];
	T[1] = X[3];
	X[3] = X[6];
	X[6] = T[1];
	T[2] = X[4];
	X[4] = X[5];
	X[5] = T[2];
	// Output: (MSb) x[7], x[6], x[5], x[4], x[3], x[2], x[1], x[0] (LSb)
	end
endmodule
