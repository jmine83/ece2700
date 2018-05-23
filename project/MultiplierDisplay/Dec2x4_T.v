`timescale 1ns / 1ps

module Dec2x4_T();

	reg H1_s, H0_s;
	wire L3_s, L2_s, L1_s, L0_s;

	Dec2x4 test(H1_s, H0_s, L3_s, L2_s, L1_s, L0_s);

	initial begin
		H1_s <= 1; H0_s <=1;
		#10 H1_s <= 1; H0_s <=0;
		#10 H1_s <= 0; H0_s <=1;
		#10 H1_s <= 0; H0_s <=0;
	end

endmodule
