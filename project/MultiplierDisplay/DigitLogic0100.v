`timescale 1ns / 1ps

module DigitLogic0100(PR, K, M);

	input [7:0] PR; // Product: PR
	output [7:0] K; // Seven Segments & Decimal Point Data: [a:g], dp

	output reg [6:0] M; // 10s Data: M

	reg [3:0] J; // Character Selector Bits: [w:z]

	SevenSegmentLogic S7L0100(J[3],J[2],J[1],J[0],K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]); // 100s Register

	always@(PR) begin

		$display("PR@0100 = ",PR);

		// 100s Logic
		M = 0;
		if (PR <= 225 && PR >= 200) begin
			//$display("_2--");
			J[3]=1; J[2]=1; J[1]=0; J[0]=1; // 2
			M = PR - 200;
		end
		else if (PR <= 199 && PR >= 100) begin
			//$display("_1--");
			J[3]=1; J[2]=1; J[1]=1; J[0]=0; // 1
			M = PR - 100;
		end
		else if (PR <= 99 && PR >= 10) begin
			//$display("__##");
			J[3]=0; J[2]=0; J[1]=0; J[0]=0; // No Character
			M = PR;
		end
		else if (PR <= 9 && PR >= 0) begin
			$display("___#");
			J[3]=0; J[2]=0; J[1]=0; J[0]=0; // No Character
			M = 100;
		end
		else begin
			//$display("-#-- ERROR");
			J[3]=0; J[2]=0; J[1]=0; J[0]=1; // E
			M = 127;
		end
		//$display("M@0100 = ",M);
		//$display("J@0100 = ",J[3],J[2],J[1],J[0]);
		//$display("K@0100 = ",K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]);
	end

endmodule
