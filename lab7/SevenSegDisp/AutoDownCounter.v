`timescale 1ns / 1ps

module AutoDownCounter(clk, tc, C);

	input clk;
	output reg tc;
	output reg [1:0] C;

	initial begin
	C[1] <= 1; C[0] <= 1;
	end

	always @(posedge clk) begin
		C <= C - 1'b1;
		if (C == 2'b01) begin
			tc <= 1;
		end
		else begin
			tc <= 0;
		end
	end

endmodule
