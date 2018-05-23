`timescale 1ns / 1ps

module Mux4x1(I3, I2, I1, I0, O, X1, X0);

	input [7:0] I3, I2, I1, I0; // Input Data (8-bit)
	output reg [7:0] O; // Output Data (8-bit)
	input X1, X0; // Selector Bits
	
	always@(X1, X0) begin
		if (X1 == 1 && X0 == 1) begin
			O = I3;
			$display("O = ",O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]);
		end
		else if (X1 == 1 && X0 == 0) begin
			O = I2;
			$display("O = ",O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]);
		end
		else if (X1 == 0 && X0 == 1) begin
			O = I1;
			$display("O = ",O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]);
		end
		else if (X1 == 0 && X0 == 0) begin
			O = I0;
			$display("O = ",O[7],O[6],O[5],O[4],O[3],O[2],O[1],O[0]);
		end
		else begin
			$display("MUX #ERROR#");
		end		
	end

endmodule
