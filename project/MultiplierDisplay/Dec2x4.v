`timescale 1ns / 1ps

module Dec2x4(H1, H0, L3, L2, L1, L0); // Active Low

	input H1, H0; // Selector Bits
	output reg L3, L2, L1, L0; // Output Bits
	
	always@(H1, H0) begin
		if (H1 == 1 && H0 == 1) begin
			L3=0; L2=1; L1=1; L0=1;
		end
		else if (H1 == 1 && H0 == 0) begin
			L3=1; L2=0; L1=1; L0=1;
		end
		else if (H1 == 0 && H0 == 1) begin
			L3=1; L2=1; L1=0; L0=1;
		end
		else if (H1 == 0 && H0 == 0) begin
			L3=1; L2=1; L1=1; L0=0;
		end
		else begin
			$display("DEC #ERROR#");
		end
	end

endmodule
