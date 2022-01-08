import PIPODefinitions::*;

module runRound(input logic clk, input logic reset, input state_t data, input state_t key, input state_t counter,
								output state_t nextData, output state_t check);
	state_t tempKey, tempData, wires[2];
	

	
	
	S_layer sl(data, wires[0]);
	R_layer rl(wires[0], wires[1]);
	
	xorKey xk(counter, key, tempKey);
	xorData xd(wires[1] , tempKey, tempData);
	
	Buffer bufferData(clk, reset, tempData, nextData);
	Buffer bufferKey2(clk, reset, wires[1], check);

endmodule 