import PIPODefinitions::*;

module expandKey_0(input roundKey_t key, 
						output state_t f_key );
						
	always_comb
	  begin
			for(int i = 0; i < 8; i++)
			begin
				f_key[i] = key[i];
			end
	  end

endmodule 