`timescale 1ns / 1ps

module votingtest();

	reg s2_s, s1_s, s0_s, t_s, p_s;
	wire G_s;

	voting voting_s(s2_s, s1_s, s0_s, t_s, p_s, G_s);
	
	initial begin
		s2_s <= 0; s1_s <= 0; s0_s <= 0; t_s <= 0; p_s <= 0; // 00
		#10 s2_s <= 0; s1_s <= 0; s0_s <= 0; t_s <= 1; p_s <= 1; // 03
		#10 s2_s <= 0; s1_s <= 1; s0_s <= 1; t_s <= 1; p_s <= 1; // 07
		#10 s2_s <= 0; s1_s <= 1; s0_s <= 0; t_s <= 1; p_s <= 1; // 11
		#10 s2_s <= 0; s1_s <= 1; s0_s <= 1; t_s <= 1; p_s <= 1; // 15
		#10 s2_s <= 1; s1_s <= 0; s0_s <= 0; t_s <= 0; p_s <= 1; // 17
		#10 s2_s <= 1; s1_s <= 0; s0_s <= 0; t_s <= 1; p_s <= 1; // 19
		#10 s2_s <= 1; s1_s <= 0; s0_s <= 1; t_s <= 1; p_s <= 1; // 23
		#10 s2_s <= 1; s1_s <= 1; s0_s <= 0; t_s <= 1; p_s <= 1; // 27
		#10 s2_s <= 1; s1_s <= 1; s0_s <= 1; t_s <= 1; p_s <= 1; // 31
	end

endmodule
