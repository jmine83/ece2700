`timescale 1ns / 1ps

module voting(s2, s1, s0, t, p, G);

	input s2, s1, s0, t, p;
	output G;
	
	wire s;
	
	maj maj_1(s2, s1, s0, s);
	maj maj_2(s, t, p, G);

endmodule
