import PIPODefinitions::*;

module tb_PIPO();
	logic clk = 0;
	logic reset = 0;
	state_t counter = {8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00, 8'h00};
	state_t [0:14] result = 0;
	state_t data = {8'h26, 8'h00, 8'h27, 8'h1E, 8'hF6, 8'h52, 8'h85, 8'h09};
	roundKey_t key = {8'h97, 8'h22, 8'h15, 8'h2E, 8'hAD, 8'h20, 8'h1D, 8'h7E, 8'hD2, 8'h28, 8'h94, 8'h77, 8'hDD, 8'h16, 8'hC4, 8'h6D};
	
	PIPO_blockcipher_verilog run(clk, reset, data, key, counter, result);
	
	always
		#5 clk = ~clk;
		
	initial begin           
		 clk <= 0;
		 //reset <= 1;
		 #40;
		 reset <= 0;
		 //#200;
		 $finish;
  end

endmodule
