`timescale 1ns / 1ps

module MultiplierDisplay_T();

	reg clk_s;
	reg S7_s, S6_s, S5_s, S4_s, S3_s, S2_s, S1_s, S0_s;
	wire L7_s, L6_s, L5_s, L4_s, L3_s, L2_s, L1_s, L0_s;
	wire E3_s, E2_s, E1_s, E0_s;
	wire ZA_s, ZB_s, ZC_s, ZD_s, ZE_s, ZF_s, ZG_s, ZDP_s;

	MultiplierDisplay test(clk_s, S7_s, S6_s, S5_s, S4_s, S3_s, S2_s, S1_s, S0_s, L7_s, L6_s, L5_s, L4_s, L3_s, L2_s, L1_s, L0_s, E3_s, E2_s, E1_s, E0_s, ZA_s, ZB_s, ZC_s, ZD_s, ZE_s, ZF_s, ZG_s, ZDP_s);

	always begin
		clk_s <= 0;
		#10;
		clk_s <= 1;
		#10;
	end

	initial begin
		S7_s <= 0; S6_s <= 0; S5_s <= 0; S4_s <= 0; S3_s <= 0; S2_s <= 0; S1_s <= 0; S0_s <= 0; // 0 * 0 = 0
		#10 S7_s <= 0; S6_s <= 0; S5_s <= 1; S4_s <= 0; S3_s <= 0; S2_s <= 0; S1_s <= 1; S0_s <= 1; // 2 * 3 = 6
		#10 S7_s <= 0; S6_s <= 0; S5_s <= 1; S4_s <= 1; S3_s <= 0; S2_s <= 0; S1_s <= 1; S0_s <= 1; // 3 * 3 = 9
		#10 S7_s <= 0; S6_s <= 1; S5_s <= 0; S4_s <= 1; S3_s <= 0; S2_s <= 0; S1_s <= 1; S0_s <= 0; // 5 * 2 = 10
		#10 S7_s <= 1; S6_s <= 0; S5_s <= 0; S4_s <= 0; S3_s <= 0; S2_s <= 1; S1_s <= 0; S0_s <= 0; // 8 * 4 = 32
		#10 S7_s <= 1; S6_s <= 0; S5_s <= 0; S4_s <= 1; S3_s <= 0; S2_s <= 1; S1_s <= 1; S0_s <= 0; // 9 * 6 = 54
		#10 S7_s <= 1; S6_s <= 0; S5_s <= 1; S4_s <= 1; S3_s <= 1; S2_s <= 0; S1_s <= 0; S0_s <= 1; // 11 * 9 = 99
		#10 S7_s <= 1; S6_s <= 0; S5_s <= 1; S4_s <= 0; S3_s <= 1; S2_s <= 0; S1_s <= 1; S0_s <= 0; // 10 * 10 = 100
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 0; S4_s <= 1; S3_s <= 1; S2_s <= 0; S1_s <= 0; S0_s <= 0; // 13 * 8 = 104
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 0; S4_s <= 0; S3_s <= 1; S2_s <= 0; S1_s <= 1; S0_s <= 0; // 12 * 10 = 120
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 0; S4_s <= 0; S3_s <= 1; S2_s <= 1; S1_s <= 0; S0_s <= 0; // 12 * 12 = 144
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 1; S4_s <= 1; S3_s <= 1; S2_s <= 0; S1_s <= 1; S0_s <= 1; // 15 * 11 = 165
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 1; S4_s <= 1; S3_s <= 1; S2_s <= 1; S1_s <= 1; S0_s <= 0; // 15 * 14 = 210
		#10 S7_s <= 1; S6_s <= 1; S5_s <= 1; S4_s <= 1; S3_s <= 1; S2_s <= 1; S1_s <= 1; S0_s <= 1; // 15 * 15 = 225
	end

endmodule
