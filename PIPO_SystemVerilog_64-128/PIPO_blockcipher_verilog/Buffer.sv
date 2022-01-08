import PIPODefinitions::*;

module Buffer(input logic clk, input logic reset, input state_t in,
					output state_t out);
				 
	  always_ff @(posedge clk)
    begin
		 if(reset)
			out <= 0;
		 else
			out <= in;
    end

endmodule : Buffer