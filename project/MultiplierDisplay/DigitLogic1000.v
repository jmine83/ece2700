`timescale 1ns / 1ps

module DigitLogic1000(PR, K, eT);

	input [7:0] PR; // Product: PR
	output [7:0] K; // Seven Segments & Decimal Point Data: [a:g], dp
	output reg eT; // Enable Bit for Counter: eT

	reg [3:0] J; // Character Selector Bits: [w:z]

	SevenSegmentLogic S7L1000(J[3],J[2],J[1],J[0],K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]); // 1000s Register

	always@(PR) begin

		$display("PR@1000 = ",PR);

		eT = 0; // Turn Counter Off
		//$display("eT@1000 = ",eT);

		// 1000s Logic
		if (PR > 225) begin
			//$display("#--- ERROR");
			J[3]=0; J[2]=0; J[1]=0; J[0]=1; // E
		end
		else begin
			$display("Turn Off #--- Digit");
			J[3]=0; J[2]=0; J[1]=0; J[0]=0; // No Character
		end
		//$display("J@1000 = ",J[3],J[2],J[1],J[0]);
		//$display("K@1000 = ",K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]);
	end

endmodule
