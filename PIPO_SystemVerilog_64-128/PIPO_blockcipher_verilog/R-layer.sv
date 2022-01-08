import PIPODefinitions::*;

module R_layer(input state_t in, output state_t X);

always_comb
	begin
		X[0] = in[0];
		X[1] = (in[1] << 7) | (in[1] >> 1);
		X[2] = (in[2] << 4) | (in[2] >> 4);
		X[3] = (in[3] << 3) | (in[3] >> 5);
		X[4] = (in[4] << 6) | (in[4] >> 2);
		X[5] = (in[5] << 5) | (in[5] >> 3);
		X[6] = (in[6] << 1) | (in[6] >> 7);
		X[7] = (in[7] << 2) | (in[7] >> 6);
	end
	
endmodule