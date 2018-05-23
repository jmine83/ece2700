`timescale 1ns / 1ps

module maj(a, b, c, F);

	input a, b, c;
	output F;
	
	wire w7, w6, w5, w4, w3, w2, w1, w0;
	
	dec3x8 dec3x8_1(a, b, c, w7, w6, w5, w4, w3, w2, w1, w0);
	or OR_1(F, w7, w6, w5, w3);

endmodule
