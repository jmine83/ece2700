`timescale 1ns / 1ps

module circuit1(F, a, b, c, d);

	input a, b, c, d;
	output F;
	
	wire W1, W2;
	
	and AND_1(W1, a, b);
	and AND_2(W2, c, d);
	or OR_1(F, W1, W2);

endmodule
