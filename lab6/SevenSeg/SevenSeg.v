`timescale 1ns / 1ps

module SevenSeg(clk0, rst, button, count, w, x, y, z, a, b, c, d, e, f, g, n3, n2, n1, n0);

	input clk0, rst, button, count;
	output reg w, x, y, z;
	output a, b, c, d, e, f, g;
	output reg n3, n2, n1, n0;
	wire clk1;

	// MovingStates
	parameter mS_00 = 2'b00, 
				 mS_01 = 2'b01, 
			    mS_02 = 2'b10, 
				 mS_03 = 2'b11;

	reg [1:0] mState, mStateNext;

	// CountingStates
	parameter cS_00 = 4'b0000, 
				 cS_01 = 4'b0001, 
			    cS_02 = 4'b0010, 
				 cS_03 = 4'b0011, 
				 cS_04 = 4'b0100, 
				 cS_05 = 4'b0101, 
				 cS_06 = 4'b0110, 
				 cS_07 = 4'b0111, 
				 cS_08 = 4'b1000, 
				 cS_09 = 4'b1001, 
				 cS_10 = 4'b1010, 
				 cS_11 = 4'b1011, 
				 cS_12 = 4'b1100, 
				 cS_13 = 4'b1101, 
				 cS_14 = 4'b1110, 
				 cS_15 = 4'b1111;

	reg [3:0] cState, cStateNext;

	seg7 s7(w, x, y, z, a, b, c, d, e, f, g);
	
	clockdivider cd(clk0, clk1);

	// MovingLogic
	//always @(posedge clk1, mState, button) begin
	always @(mState, button) begin
		case (mState)
			mS_00: begin
				n3 = 1; n2 = 1; n1 = 1; n0 = 0;
				if (button == 1)
					mStateNext <= mS_01;
				else
					mStateNext <= mS_00;		
			end
			mS_01: begin
				n3 = 1; n2 = 1; n1 = 0; n0 = 1;
				if (button == 1)
					mStateNext <= mS_02;
				else
					mStateNext <= mS_01;
			end
			mS_02: begin
				n3 = 1; n2 = 0; n1 = 1; n0 = 1;
				if (button == 1)
					mStateNext <= mS_03;
				else
					mStateNext <= mS_02;
			end
			mS_03: begin
				n3 = 0; n2 = 1; n1 = 1; n0 = 1;
				if (button == 1)
					mStateNext <= mS_00;
				else
					mStateNext <= mS_03;
			end
		endcase
	end

	// MovingStateReg
	always @(posedge clk1) begin
		if (rst == 1)
			mState <= mS_00;
		else
			mState <= mStateNext;	
	end

	// CountingLogic
	//always @(posedge clk1, cState, count) begin
	always @(cState, count) begin
		case (cState)
			cS_00: begin
				w = 1; x = 1; y = 1; z = 1;
				if (count == 1)
					cStateNext <= cS_01;
				else
					cStateNext <= cS_00;		
			end
			cS_01: begin
				w = 1; x = 1; y = 1; z = 0;
				if (count == 1)
					cStateNext <= cS_02;
				else
					cStateNext <= cS_01;		
			end
			cS_02: begin
				w = 1; x = 1; y = 0; z = 1;
				if (count == 1)
					cStateNext <= cS_03;
				else
					cStateNext <= cS_02;		
			end
			cS_03: begin
				w = 1; x = 1; y = 0; z = 0;
				if (count == 1)
					cStateNext <= cS_04;
				else
					cStateNext <= cS_03;		
			end
			cS_04: begin
				w = 1; x = 0; y = 1; z = 1;
				if (count == 1)
					cStateNext <= cS_05;
				else
					cStateNext <= cS_04;		
			end
			cS_05: begin
				w = 1; x = 0; y = 1; z = 0;
				if (count == 1)
					cStateNext <= cS_06;
				else
					cStateNext <= cS_05;		
			end
			cS_06: begin
				w = 1; x = 0; y = 0; z = 1;
				if (count == 1)
					cStateNext <= cS_07;
				else
					cStateNext <= cS_06;		
			end
			cS_07: begin
				w = 1; x = 0; y = 0; z = 0;
				if (count == 1)
					cStateNext <= cS_08;
				else
					cStateNext <= cS_07;		
			end
			cS_08: begin
				w = 0; x = 1; y = 1; z = 1;
				if (count == 1)
					cStateNext <= cS_09;
				else
					cStateNext <= cS_08;		
			end
			cS_09: begin
				w = 0; x = 1; y = 1; z = 0;
				if (count == 1)
					cStateNext <= cS_10;
				else
					cStateNext <= cS_09;		
			end
			cS_10: begin
				w = 0; x = 1; y = 0; z = 1;
				if (count == 1)
					cStateNext <= cS_11;
				else
					cStateNext <= cS_10;		
			end
			cS_11: begin
				w = 0; x = 1; y = 0; z = 0;
				if (count == 1)
					cStateNext <= cS_12;
				else
					cStateNext <= cS_11;		
			end
			cS_12: begin
				w = 0; x = 0; y = 1; z = 1;
				if (count == 1)
					cStateNext <= cS_13;
				else
					cStateNext <= cS_12;		
			end
			cS_13: begin
				w = 0; x = 0; y = 1; z = 0;
				if (count == 1)
					cStateNext <= cS_14;
				else
					cStateNext <= cS_13;		
			end
			cS_14: begin
				w = 0; x = 0; y = 0; z = 1;
				if (count == 1)
					cStateNext <= cS_15;
				else
					cStateNext <= cS_14;		
			end
			cS_15: begin
				w = 0; x = 0; y = 0; z = 0;
				if (count == 1)
					cStateNext <= cS_00;
				else
					cStateNext <= cS_15;		
			end
		endcase
	end
	
	// CountingStateReg
	always @(posedge clk1) begin
		if (rst == 1)
			cState <= cS_00;
		else
			cState <= cStateNext;	
	end

endmodule
