`timescale 1ns / 1ps

module UpDownCounterL_T();

	reg clk_s, cnt_s, clr_s, dir_s, ld_s;
	reg L3_s, L2_s, L1_s, L0_s;
	wire tc_s;
	wire [3:0] C_s;

	wire a_s, b_s, c_s, d_s, e_s, f_s, g_s;
	wire w_s, x_s, y_s, z_s;

	UpDownCounterL test(clk_s, cnt_s, clr_s, dir_s, ld_s, L3_s, L2_s, L1_s, L0_s, tc_s, C_s, a_s, b_s, c_s, d_s, e_s, f_s, g_s, w_s, x_s, y_s, z_s);

	always begin
		clk_s<=0;
		#10;
		clk_s<=1;
		#10;
	end

	initial begin
		clr_s <= 0; cnt_s <= 0; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0;
		#10 clr_s <= 0; cnt_s <= 0; ld_s <= 1; L3_s <= 0; L2_s <= 1; L1_s <= 1; L0_s <= 1; dir_s <= 0; // Load: 8		
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 1; // Count Up
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 0; cnt_s <= 1; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Count Down
		#10 clr_s <= 1; cnt_s <= 0; ld_s <= 0; L3_s <= 0; L2_s <= 0; L1_s <= 0; L0_s <= 0; dir_s <= 0; // Clear
		#10 clr_s <= 0; cnt_s <= 0; ld_s <= 1; L3_s <= 1; L2_s <= 0; L1_s <= 1; L0_s <= 1; dir_s <= 0; // Load: 4
	end
endmodule
