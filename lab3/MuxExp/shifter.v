`timescale 1ns / 1ps

module shifter(i3, i2, i1, i0, s1, s0, d3, d2, d1, d0);

	input i3, i2, i1, i0;
	input s1, s0;
	output d3, d2, d1, d0;
	
	mux4x1 mux4x1_3(i0, 0, i2, i3, s1, s0, d3);
	mux4x1 mux4x1_2(i3, i3, i1, i2, s1, s0, d2);
	mux4x1 mux4x1_1(i2, i2, i0, i1, s1, s0, d1);
	mux4x1 mux4x1_0(i1, i1, 0, i0, s1, s0, d0);

endmodule
