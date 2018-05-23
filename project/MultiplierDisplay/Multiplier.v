`timescale 1ns / 1ps

module Multiplier(S7, S6, S5, S4, S3, S2, S1, S0, PR);

	input S7, S6, S5, S4, S3, S2, S1, S0; // Multiplicand (4-bit): SW[7:4]; Multiplier (4-bit): SW[3:0]
	
	reg [3:0] MD, MR; // Multiplicand Register: MD; Multiplier Register: MR
	reg [7:0] RS; // Running Sum Register: RS
	output reg [7:0] PR; // Product Register: PR

	integer i; // Index Bit
	
	always@(S7, S6, S5, S4, S3, S2, S1, S0) begin
		MD[3] = S7; MD[2] = S6; MD[1] = S5; MD[0] = S4; // Load Multiplicand from SW[7:4]
		//$display("MD = ",MD);
		MR[3] = S3; MR[2] = S2; MR[1] = S1; MR[0] = S0; // Load Multiplier from SW[3:0]
		//$display("MR = ",MR);
		RS = 0; // Clear Running Sum Register
		for (i=0; i<=3; i=i+1) begin
			if (MR[i] == 1) begin // If Multiplier Bit is 1
				RS[7:3] = MD + RS[6:3]; // Load New Running Sum
				if (i != 3) begin
					RS = RS >> 1; // Shift Right the Running Sum
				end
			end
			else begin // If Multiplier Bit is 0
				if (i != 3) begin
					RS = RS >> 1; // Shift Right the Running Sum
				end
			end
		end
		PR = RS; // Load Product Register with Final Running Sum Value
		//$display("PR = ",PR);
	end

endmodule
