`timescale 1ns / 1ps

module DigitLogic_T();

	reg [7:0] PR_s;
	wire [7:0] R3_s, R2_s, R1_s, R0_s;
	wire Te_s;

	DigitLogic test(PR_s, R3_s, R2_s, R1_s, R0_s, Te_s);
	
	initial begin
		PR_s <= 250;
		#10 PR_s <= 225;
		#10 PR_s <= 207;
		#10 PR_s <= 200;
		#10 PR_s <= 199;
		#10 PR_s <= 146;
		#10 PR_s <= 104;
		#10 PR_s <= 100;
		#10 PR_s <= 99;
		#10 PR_s <= 68;
		#10 PR_s <= 10;
		#10 PR_s <= 7;
		#10 PR_s <= 5;
		#10 PR_s <= 3;
		#10 PR_s <= 0;
	end

endmodule
