`timescale 1ns / 1ps

module AutoDownCounter(clk_i, eT, Q);

	input clk_i;
	input eT; // Enable Bit
	output reg [1:0] Q; // Count Value

	initial begin
	Q[1] <= 1; Q[0] <= 1;
	end

	always @(posedge clk_i) begin
		if (eT == 1) begin		
			Q <= Q - 1'b1;
			if (Q == 2'b11) begin
				//$display("C == 2'b11");
			end
			else if (Q == 2'b10) begin
				//$display("C == 2'b10");
			end
			else if (Q == 2'b01) begin
				//$display("C == 2'b01");
			end
			else if (Q == 2'b00) begin
				//$display("C == 2'b00");
			end
			else begin
				//$display("S7E #ERROR#");
			end
		end
		else begin
			Q <= Q;
		end
	end

endmodule
