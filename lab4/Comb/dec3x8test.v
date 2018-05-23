`timescale 1ns / 1ps

module dec3x8test();

	reg i2_s, i1_s, i0_s;
	wire d7_s, d6_s, d5_s, d4_s, d3_s, d2_s, d1_s, d0_s;
	
	dec3x8 dec3x8_s(i2_s, i1_s, i0_s, d7_s, d6_s, d5_s, d4_s, d3_s, d2_s, d1_s, d0_s);

	initial begin
		i2_s <= 1; i1_s <= 1; i0_s <= 1;
		#10 i2_s <= 1; i1_s <= 1; i0_s <= 0;
		#10 i2_s <= 1; i1_s <= 0; i0_s <= 1;
		#10 i2_s <= 1; i1_s <= 0; i0_s <= 0;
		#10 i2_s <= 0; i1_s <= 1; i0_s <= 1;
		#10 i2_s <= 0; i1_s <= 1; i0_s <= 0;
		#10 i2_s <= 0; i1_s <= 0; i0_s <= 1;
		#10 i2_s <= 0; i1_s <= 0; i0_s <= 0;
	end

endmodule
