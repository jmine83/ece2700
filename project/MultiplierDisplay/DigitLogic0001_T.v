`timescale 1ns / 1ps

module DigitLogic0001_T();

	wire [7:0] K_s;
	reg [3:0] N_s;
	reg eT_s;
	wire Te_s;

	DigitLogic0001 test(K_s, eT_s, N_s, Te_s);
	
	initial begin
		eT_s <= 0;
		#10 N_s <= 10;
		#10 N_s <= 9;
		#10 N_s <= 8;
		#10 N_s <= 7;
		#10 N_s <= 6;
		#10 N_s <= 5;
		#10 N_s <= 4;
		#10 N_s <= 3;
		#10 N_s <= 2;
		#10 N_s <= 1;
		#10 N_s <= 0;
	end

endmodule
