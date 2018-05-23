`timescale 1ns / 1ps

module myandgate(a, b, F);
	
	input a, b;
	output F;

	and and1(F, a, b);

endmodule
