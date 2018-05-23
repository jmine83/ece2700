`timescale 1ns / 1ps

module ds_system(B, L, S, M);

	input S, M;
	output B, L;
	
	wire W1;
	
	not NOT_1(W1, M);
	and AND_1(B, S, W1);
	and AND_2(L, S, M);

endmodule
