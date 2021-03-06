`timescale 1ns / 1ps

module DigitLogic1000_T();

	reg [7:0] PR_s;
	wire [7:0] K_s;
	wire eT_s;

	DigitLogic1000 test(PR_s, K_s, eT_s);
	
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
		#10 PR_s <= 5;
		#10 PR_s <= 0;
	end

endmodule
