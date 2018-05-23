`timescale 1ns / 1ps

module DigitLogic0001(K, eT, N, Te);

	output [7:0] K; // Seven Segments & Decimal Point Data: [a:g], dp
	input eT; // Enable Bit for Counter: eT
	output reg Te; // Enable Bit for Counter: eT

	input [3:0] N; // 1s Data: N

	reg [3:0] J; // Character Selector Bits: [w:z]

	SevenSegmentLogic S7L0001(J[3],J[2],J[1],J[0],K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]); // 1s Register

	always@(N) begin

		if (eT == 0) begin
			Te = eT; // Turn Counter Off
			$display("Te@0001 = ",Te);
		end
		else begin
			$display("Te #ERROR#");
		end

		// 1s Logic
		$display("Ni@0001 = ",N);
		if (N == 9) begin
			$display("_--9");
			J[3]=0; J[2]=1; J[1]=1; J[0]=0; // 9
		end
		else if (N == 8) begin
			$display("_--8");
			J[3]=0; J[2]=1; J[1]=1; J[0]=1; // 8
		end
		else if (N == 7) begin
			$display("_--7");
			J[3]=1; J[2]=0; J[1]=0; J[0]=0; // 7
		end
		else if (N == 6) begin
			$display("_--6");
			J[3]=1; J[2]=0; J[1]=0; J[0]=1; // 6
		end
		else if (N == 5) begin
			$display("_--5");
			J[3]=1; J[2]=0; J[1]=1; J[0]=0; // 5
		end
		else if (N == 4) begin
			$display("_--4");
			J[3]=1; J[2]=0; J[1]=1; J[0]=1; // 4
		end
		else if (N == 3) begin
			$display("_--3");
			J[3]=1; J[2]=1; J[1]=0; J[0]=0; // 3
		end
		else if (N == 2) begin 
			$display("_--2");
			J[3]=1; J[2]=1; J[1]=0; J[0]=1; // 2
		end
		else if (N == 1) begin
			$display("_--1");
			J[3]=1; J[2]=1; J[1]=1; J[0]=0; // 1
		end
		else if (N == 0) begin
			$display("_--0");
			J[3]=1; J[2]=1; J[1]=1; J[0]=1; // 0
		end
		else begin
			$display("---# ERROR");
			J[3]=0; J[2]=0; J[1]=0; J[0]=1; // E
		end
		$display("Nf@0001 = ",N);
		$display("J@0001 = ",J[3],J[2],J[1],J[0]);
		$display("K@0001 = ",K[7],K[6],K[5],K[4],K[3],K[2],K[1],K[0]);

		Te = 1; // Turn Counter On
		$display("Te@0001 = ",Te);
	end

endmodule
