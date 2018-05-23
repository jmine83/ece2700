`timescale 1ns / 1ps

module circuit2(G, a, b, c, d);

	input a, b, c, d;
	output G;
	
	wire W1, W2, W3;
	
	nand NAND_1(W1, a, b);
	nand NAND_2(W2, c, d);
	nand NAND_3(W3, W1, W2);
	nand NAND_4(G, W3, 1);

endmodule
