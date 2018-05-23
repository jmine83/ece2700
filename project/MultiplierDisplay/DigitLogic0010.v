`timescale 1ns / 1ps

module DigitLogic0010(PR, K, M, N);

	input [7:0] PR; // Product: PR
	output [7:0] K; // Seven Segments & Decimal Point Data: [a:g], dp

	input [6:0] M; // 10s Data: M
	output reg [3:0] N; // 1s Data: N

	reg [3:0] J; // Character Selector Bits: [w:z]

	SevenSegmentLogic S7L0010(J[3],J[2],J[1],J[0],K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]); // 10s Register

	always@(M) begin

		$display("PR@0010 = ",PR);

		// 10s Logic
		N = 0;
		if (M == 100) begin
			$display("___#");
			J[3]=0; J[2]=0; J[1]=0; J[0]=0; // No Character
			N = PR;
		end
		else if (M <= 99 && M >= 90) begin
			//$display("_-9-");
			J[3]=0; J[2]=1; J[1]=1; J[0]=0; // 9
			N = M - 90;
		end
		else if (M <= 89 && M >= 80) begin
			//$display("_-8-");
			J[3]=0; J[2]=1; J[1]=1; J[0]=1; // 8
			N = M - 80;
		end
		else if (M <= 79 && M >= 70) begin
			//$display("_-7-");
			J[3]=1; J[2]=0; J[1]=0; J[0]=0; // 7
			N = M - 70;
		end
		else if (M <= 69 && M >= 60) begin
			//$display("_-6-");
			J[3]=1; J[2]=0; J[1]=0; J[0]=1; // 6
			N = M - 60;
		end
		else if (M <= 59 && M >= 50) begin
			//$display("_-5-");
			J[3]=1; J[2]=0; J[1]=1; J[0]=0; // 5
			N = M - 50;
		end
		else if (M <= 49 && M >= 40) begin
			//$display("_-4-");
			J[3]=1; J[2]=0; J[1]=1; J[0]=1; // 4
			N = M - 40;
		end
		else if (M <= 39 && M >= 30) begin
			//$display("_-3-");
			J[3]=1; J[2]=1; J[1]=0; J[0]=0; // 3
			N = M - 30;
		end
		else if (M <= 29 && M >= 20) begin
			//$display("_-2-");
			J[3]=1; J[2]=1; J[1]=0; J[0]=1; // 2
			N = M - 20;
		end
		else if (M <= 19 && M >= 10) begin
			//$display("_-1-");
			J[3]=1; J[2]=1; J[1]=1; J[0]=0; // 1
			N = M - 10;
		end
		else if (M <= 9 && M >= 0) begin
			if (PR == 0) begin
				//$display("__0");
				J[3]=0; J[2]=0; J[1]=0; J[0]=0; // No Character
				N = 0;
			end
			else begin
				//$display("_#0-");
				J[3]=1; J[2]=1; J[1]=1; J[0]=1; // 0
				N = M;
			end
		end
		else begin
			//$display("--#- ERROR");
			J[3]=0; J[2]=0; J[1]=0; J[0]=1; // E
			N = 10;
		end
		$display("N@0010 = ",N);
		//$display("J@0010 = ",J[3],J[2],J[1],J[0]);
		//$display("K@0010 = ",K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]);
	end

endmodule
