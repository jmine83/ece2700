`timescale 1ns / 1ps

module myandgatetest();
	
	reg a_s, b_s;
	wire F_s;
	
	myandgate magtest(a_s, b_s, F_s);

	initial begin
		a_s <= 0; b_s <= 0;
		#10 a_s <= 0; b_s <= 1;
		#10 a_s <= 1; b_s <= 0;
		#10 a_s <= 1; b_s <= 1;
	end

endmodule
