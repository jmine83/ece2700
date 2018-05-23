`timescale 1ns / 1ps

module dflipflop(Clk, Hold, Rst, Set, D, Q);

	input D;
	output reg Q;
	input Clk, Hold, Rst, Set;

	always @ (posedge Rst, posedge Set, posedge Clk) begin
		if (Rst == 1)
			Q <= 0;
		else if (Set == 1)
			Q <= 1;
		else if (Hold == 1)
			Q <= Q;
		else
			Q <= D;
	end

endmodule
