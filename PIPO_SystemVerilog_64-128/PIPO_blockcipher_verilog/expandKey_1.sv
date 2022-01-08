import PIPODefinitions::*;

module expandKey_1(input roundKey_t key, 
						output state_t s_key );
						
		always_comb
		  begin
				for(int i = 0; i < 8; i++)
				begin
					s_key[i] = key[i+8];
				end
		  end
	
endmodule 