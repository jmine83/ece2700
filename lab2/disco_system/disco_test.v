`timescale 1ns / 1ps

module disco_test();

	reg S_s, M_s;
	wire B_s, L_s;
	
	ds_system ds_system_s(B_s, L_s, S_s, M_s);

	initial begin
		S_s <= 0; M_s <= 0;
		#10 S_s <= 0; M_s <= 1;
		#10 S_s <= 1; M_s <= 0;
		#10 S_s <= 1; M_s <= 1;
	end

endmodule
