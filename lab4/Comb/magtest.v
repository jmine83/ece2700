`timescale 1ns / 1ps

module magtest();

	reg a_s, b_s, c_s;
	wire F_s;
	
	mag mag_s(a_s, b_s, c_s, F_s);
	
	initial begin
		a_s <= 0; b_s <= 0; c_s <= 0;
		#10 a_s <= 0; b_s <= 0; c_s <= 1;
		#10 a_s <= 0; b_s <= 1; c_s <= 0;
		#10 a_s <= 0; b_s <= 1; c_s <= 1;
		#10 a_s <= 1; b_s <= 0; c_s <= 0;
		#10 a_s <= 1; b_s <= 0; c_s <= 1;
		#10 a_s <= 1; b_s <= 1; c_s <= 0;
		#10 a_s <= 1; b_s <= 1; c_s <= 1;
	end

endmodule
