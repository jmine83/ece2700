`timescale 1ns / 1ps

module SevenSeg(w, x, y, z, a, b, c, d, e, f, g, n3, n2, n1, n0);

	input w, x, y, z;
	output n3, n2, n1, n0;
	output a, b, c, d, e, f, g;
	
	seg7 seg7_0(w, x, y, z, a, b, c, d, e, f, g);
	assign n3 = 1;
	assign n2 = 1;
	assign n1 = 1;
	assign n0 = 0;

endmodule
