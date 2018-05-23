`timescale 1ns / 1ps

module DigitLogic(PR, R3, R2, R1, R0, Te);

	input [7:0] PR; // Product: PR
	output [7:0] R3, R2, R1, R0; // Digit Registers: R[3:0]
	output Te; // Enable Bit for Counter: Te
	wire eT; // Enable Bit for Counter: Te

	wire [6:0] M; // 10s Data: M
	wire [3:0] N; // 1s Data: N

	DigitLogic1000 DL1000(PR, R3, eT); // 1000s Logic
	DigitLogic0100 DL0100(PR, R2, M); // 100s Logic
	DigitLogic0010 DL0010(PR, R1, M, N); // 10s Logic
	DigitLogic0001 DL0001(R0, eT, N, Te); // 1s Logic

endmodule
