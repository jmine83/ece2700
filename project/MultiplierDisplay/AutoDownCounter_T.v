`timescale 1ns / 1ps

module AutoDownCounter_T();

	reg clk_i_s;
	wire [1:0] Q_s;

	AutoDownCounter test(clk_i_s, Q_s);

	always begin
		clk_i_s <= 0;
		#10;
		clk_i_s <= 1;
		#10;
	end
	
endmodule
