`timescale 1ns / 1ps

module UpDownCounterL(clk, cnt, clr, dir, ld, L3, L2, L1, L0, tc, C, a, b, c, d, e, f, g, w, x, y, z);

	input clk, cnt, clr, dir, ld;
	input L3, L2, L1, L0;
	output tc;
	output reg [3:0] C;
	wire clkd;

	output a, b, c, d, e, f, g;
	output reg w, x, y, z;

	//clockdivider cd(clk, clkd);

	seg7 S7(C[3], C[2], C[1], C[0], a, b, c, d, e, f, g);

	always @(posedge clk) begin // Use clkd for the board.
		w = 1; x = 1; y = 1; z = 0;
		// Load
		if (ld == 1) begin
			C[3] <= ~L3; C[2] <= ~L2; C[1] <= ~L1; C[0] <= ~L0;
		end
		// Count Up
		if (cnt == 1 & dir == 1) begin
			C <= C + 1'b1;
			if (C == 4'b1111) begin
				C <= 4'b0000;
			end
		end
		// Count Down
		if (cnt == 1 & dir == 0) begin
			C <= C - 1'b1;
			if (C == 4'b0000) begin
				C <= 4'b1111;
			end
		end
		// Clear
		if (clr == 1) begin
			C <= 4'b1111;
		end
	end
	
	assign tc = (~C[3]*~C[2]*~C[1]*~C[0]*~dir+C[3]*C[2]*C[1]*C[0]*dir);

endmodule
