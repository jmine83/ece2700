`timescale 1ns / 1ps

module Mux4x1_T();

	reg [7:0] I3_s, I2_s, I1_s, I0_s;
	wire [7:0] O_s;
	reg X1_s, X0_s;

	Mux4x1 test(I3_s, I2_s, I1_s, I0_s, O_s, X1_s, X0_s);

	initial begin
		I3_s = 8'b11111111; // _
		I2_s = 8'b00100101; // 2
		I1_s = 8'b00011111; // 7
		I0_s = 8'b10011001; // 4

		X1_s <= 1; X0_s <= 1; 
		#10 X1_s <= 1; X0_s <= 0;
		#10 X1_s <= 0; X0_s <= 1;
		#10 X1_s <= 0; X0_s <= 0;
	end

endmodule
