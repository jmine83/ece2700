`timescale 1ns / 1ps

module reg4bit(Clk, Hold, Rst, Set, I, O);

	input [3:0] I;
	output [3:0] O;
	input Clk, Hold, Rst, Set;
	
	dflipflop d1(Clk, Hold, Rst, Set, I[3], O[3]);
	dflipflop d2(Clk, Hold, Rst, Set, I[2], O[2]);
	dflipflop d3(Clk, Hold, Rst, Set, I[1], O[1]);
	dflipflop d4(Clk, Hold, Rst, Set, I[0], O[0]);

endmodule
