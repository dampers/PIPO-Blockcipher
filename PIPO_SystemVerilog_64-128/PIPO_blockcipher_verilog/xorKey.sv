import PIPODefinitions::*;

module xorKey(input state_t counter, input state_t key,
					output state_t result);
					
		assign result = {counter[0]^key[0], key[1], key[2], key[3], key[4], key[5], key[6], key[7]};

endmodule 

