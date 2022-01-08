import PIPODefinitions::*;

module PIPO_blockcipher_verilog(input logic clk, input logic reset, input state_t data, input roundKey_t key, input state_t counter,
					output state_t result);
					
	state_t roundKey[2];
	state_t roundData[15];
	state_t roundCounter[15];
	state_t temp1, temp2;
	
	expandKey_0 fk(key, roundKey[0]); //K0
	expandKey_1 sk(key, roundKey[1]); //K1
	
	make_FirstData mf(data, roundData[0]);
	make_FirstData mfc(counter, roundCounter[0]);
	
	genvar i;
	genvar j;
	
	generate
		for(i=0; i<7; i++)
		begin : first
			for(j=0; j<2; j++)
			begin :second
				if(i==0 && j==0)
				begin
					xorKey xk(roundCounter[0], roundKey[0], temp1);
					xorData xd(roundData[0], temp1, temp2);
					Buffer bp2(clk,reset, temp2, roundData[1]);
					setCounter bc(clk,reset, roundCounter[0], roundCounter[1]);	
				end
				else
				begin
					runRound brk(clk, reset, roundData[i*2 + j], roundKey[j], roundCounter[(i*2+j)], roundData[(i*2 +j)+1]);				
					setCounter bc(clk,reset, roundCounter[i*2+j], roundCounter[(i*2+j)+1]);	
				end
			end:second
		end:first
	endgenerate
	
	assign result = roundData[14];	
endmodule 