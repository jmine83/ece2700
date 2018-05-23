`timescale 1ns / 1ps

module AutoDownCounter_T();

	reg clk_s;
	wire tc_s;
	wire [1:0] C_s;

	AutoDownCounter test(clk_s, tc_s, C_s);

	always begin
		clk_s<=0;
		#10;
		clk_s<=1;
		#10;
	end
endmodule
