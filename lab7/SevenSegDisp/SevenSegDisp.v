`timescale 1ns / 1ps

module SevenSegDisp(clk, tc, a, b, c, d, e, f, g, w, x, y, z);

	input clk;
	output tc;
	wire [1:0] C;
	wire clkd;

	output a, b, c, d, e, f, g;
	output reg w, x, y, z;
	
	clockdivider cd(clk, clkd);
	
	seg7 S7(1, 1, C[1], C[0], a, b, c, d, e, f, g);

	AutoDownCounter ADC(clkd, tc, C);

	always @(C) begin
		if (C == 2'b00) begin
			w = 1; x = 1; y = 1; z = 0;
			// Display 3
		end
		if (C == 2'b01) begin
			w = 1; x = 1; y = 0; z = 1;
			// Display 2
		end
		if (C == 2'b10) begin
			w = 1; x = 0; y = 1; z = 1;
			// Display 1
		end
		if (C == 2'b11) begin
			w = 0; x = 1; y = 1; z = 1;
			// Display 0
		end
	end
endmodule
