`timescale 1ns / 1ps

module testbench();

	reg a_s, b_s, c_s, d_s;
	wire F_s, G_s;
	
	circuit1 circuit1_s(F_s, a_s, b_s, c_s, d_s);
	circuit2 circuit2_s(G_s, a_s, b_s, c_s, d_s);

	initial begin
		a_s <= 0; b_s <= 0; c_s <= 0; d_s <= 0;
		#10 a_s <= 0; b_s <= 0; c_s <= 0; d_s <= 1;
		#10 a_s <= 0; b_s <= 0; c_s <= 1; d_s <= 0;
		#10 a_s <= 0; b_s <= 0; c_s <= 1; d_s <= 1;
		#10 a_s <= 0; b_s <= 1; c_s <= 0; d_s <= 0;
		#10 a_s <= 0; b_s <= 1; c_s <= 0; d_s <= 1;
		#10 a_s <= 0; b_s <= 1; c_s <= 1; d_s <= 0;
		#10 a_s <= 0; b_s <= 1; c_s <= 1; d_s <= 1;
		#10 a_s <= 1; b_s <= 0; c_s <= 0; d_s <= 0;
		#10 a_s <= 1; b_s <= 0; c_s <= 0; d_s <= 1;
		#10 a_s <= 1; b_s <= 0; c_s <= 1; d_s <= 0;
		#10 a_s <= 1; b_s <= 0; c_s <= 1; d_s <= 1;
		#10 a_s <= 1; b_s <= 1; c_s <= 0; d_s <= 0;
		#10 a_s <= 1; b_s <= 1; c_s <= 0; d_s <= 1;
		#10 a_s <= 1; b_s <= 1; c_s <= 1; d_s <= 0;
		#10 a_s <= 1; b_s <= 1; c_s <= 1; d_s <= 1;
	end

endmodule
