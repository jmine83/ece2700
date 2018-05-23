`timescale 1ns / 1ps

module DigitLogic0010_T();

	reg [7:0] PR_s;
	wire [7:0] K_s;
	reg [6:0] M_s; 
	wire [3:0] N_s;

	DigitLogic0010 test(PR_s, K_s, M_s, N_s);
	
	initial begin
		PR_s <= 250; M_s <= 127;
		#10 PR_s <= 225; M_s <= 25;
		#10 PR_s <= 207; M_s <= 7;
		#10 PR_s <= 200; M_s <= 0;
		#10 PR_s <= 199; M_s <= 99;
		#10 PR_s <= 146; M_s <= 46;
		#10 PR_s <= 104; M_s <= 4;
		#10 PR_s <= 100; M_s <= 0;
		#10 PR_s <= 99; M_s <= 99;
		#10 PR_s <= 68; M_s <= 68;
		#10 PR_s <= 10; M_s <= 10;
		#10 PR_s <= 5; M_s <= 100;
		#10 PR_s <= 0; M_s <= 100;
	end

endmodule
