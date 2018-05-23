`timescale 1ns / 1ps

module MultiplierDisplay(clk, S7, S6, S5, S4, S3, S2, S1, S0, L7, L6, L5, L4, L3, L2, L1, L0, E3, E2, E1, E0, ZA, ZB, ZC, ZD, ZE, ZF, ZG, ZDP);

	input clk; wire [1:0] Q; wire clkZ;
	input S7, S6, S5, S4, S3, S2, S1, S0; // Multiplicand (4-bit): SW[7:4]; Multiplier (4-bit): SW[3:0]
	output L7, L6, L5, L4, L3, L2, L1, L0; // Product (Binary, 8-bit): LD[7:0]
	wire [7:0] PR; // Product Data: PR
	wire [7:0] W3, W2, W1, W0; // Digit Registers
	wire [7:0] Z; // Seven Segments & Decimal Point Data: [a:g], dp
	wire Te; // Enable Bit for Counter: eT
	output E3, E2, E1, E0; // Input Enable Bits for Seven Segments Displays: AN[3:0]
	output ZA, ZB, ZC, ZD, ZE, ZF, ZG, ZDP; // Seven Segments & Decimal Point Data: [a:g], dp

	Multiplier MUL(S7, S6, S5, S4, S3, S2, S1, S0, PR);
	DigitLogic DIG(PR, W3, W2, W1, W0, Te);
	Mux4x1 MUX(W3, W2, W1, W0, Z, Q[1], Q[0]);
	Dec2x4 DEC(Q[1], Q[0], E3, E2, E1, E0);
	ClockDivider CKD(clk, clkZ); // Turn off for Simulation; Turn on for Implementation
	AutoDownCounter ADC(clkZ, Te, Q); // Use clk for Simulation; Use clkZ for Implementation
	
	// Turn on LD Lights on Board
	assign L7 = PR[7];
	assign L6 = PR[6];
	assign L5 = PR[5];
	assign L4 = PR[4];
	assign L3 = PR[3];
	assign L2 = PR[2];
	assign L1 = PR[1];
	assign L0 = PR[0];

	// Turn on Seven Segment Bits
	assign ZA = Z[7];
	assign ZB = Z[6];
	assign ZC = Z[5];
	assign ZD = Z[4];
	assign ZE = Z[3];
	assign ZF = Z[2];
	assign ZG = Z[1];
	assign ZDP = Z[0];
	
endmodule
