`timescale 1ns / 1ps

module mux4x1(I3, I2, I1, I0, S1, S0, D);

	input I3, I2, I1, I0;
	input S1, S0;
	output D;
	
	wire W1, W2;
	
	mux2x1 mux2x1_1(I1, I0, S0, W1);
	mux2x1 mux2x1_2(I3, I2, S0, W2);
	mux2x1 mux2x1_3(W2, W1, S1, D);

endmodule
