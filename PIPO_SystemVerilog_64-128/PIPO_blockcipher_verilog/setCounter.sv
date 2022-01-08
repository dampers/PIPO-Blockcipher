import PIPODefinitions::*;

module setCounter(input logic clk, input logic reset, input state_t counter,
								output state_t result);
		
		state_t tmp;
		
		assign tmp = {counter[0]+1, counter[1], counter[2], counter[3], counter[4], counter[5], counter[6], counter[7]};
		Buffer bc(clk, reset, tmp, result);
		
endmodule	

