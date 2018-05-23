`timescale 1ns / 1ps

module multireg4bit(Clk, Hold, Rst, Set, S, X, Y);

	input [3:0] X;
	output [3:0] Y;
	input Clk, Hold, Rst, Set;
	input [1:0] S;
	
	wire [3:0] R1, R2, R3, R4;
	
	reg4bit r1(Clk, Hold, Rst, Set, X, R1);
	reg4bit r2(Clk, Hold, Rst, Set, R1, R2);
	reg4bit r3(Clk, Hold, Rst, Set, R2, R3);
	reg4bit r4(Clk, Hold, Rst, Set, R3, R4);
	mux4bit4x1 m1(R1, R2, R3, R4, S, Y);

endmodule
