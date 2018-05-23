`timescale 1ns / 1ps

module SevenSegmentLogic(w, x, y, z, a, b, c, d, e, f, g, dp);

	input w, x, y, z;
	output reg a, b, c, d, e, f, g, dp;
	
	always@(w, x, y, z) begin
		$display("wxyz = ",w,x,y,z);
		// 0
		if (w==1 && x==1 && y==1 && z==1) begin
			a = 0;
			b = 0;
			c = 0;
			d = 0;
			e = 0;
			f = 0;
			g = 1;
		end
		// 1
		else if (w==1 && x==1 && y==1 && z==0) begin
			a = 1;
			b = 0;
			c = 0;
			d = 1;
			e = 1;
			f = 1;
			g = 1;
		end
		// 2
		else if (w==1 && x==1 && y==0 && z==1) begin
			a = 0;
			b = 0;
			c = 1;
			d = 0;
			e = 0;
			f = 1;
			g = 0;
		end
		// 3
		else if (w==1 && x==1 && y==0 && z==0) begin
			a = 0;
			b = 0;
			c = 0;
			d = 0;
			e = 1;
			f = 1;
			g = 0;
		end
		// 4
		else if (w==1 && x==0 && y==1 && z==1) begin
			a = 1;
			b = 0;
			c = 0;
			d = 1;
			e = 1;
			f = 0;
			g = 0;
		end
		// 5
		else if (w==1 && x==0 && y==1 && z==0) begin
			a = 0;
			b = 1;
			c = 0;
			d = 0;
			e = 1;
			f = 0;
			g = 0;
		end
		// 6
		else if (w==1 && x==0 && y==0 && z==1) begin
			a = 0;
			b = 1;
			c = 0;
			d = 0;
			e = 0;
			f = 0;
			g = 0;
		end
		// 7
		else if (w==1 && x==0 && y==0 && z==0) begin
			a = 0;
			b = 0;
			c = 0;
			d = 1;
			e = 1;
			f = 1;
			g = 1;
		end
		// 8
		else if (w==0 && x==1 && y==1 && z==1) begin
			a = 0;
			b = 0;
			c = 0;
			d = 0;
			e = 0;
			f = 0;
			g = 0;
		end
		// 9
		else if (w==0 && x==1 && y==1 && z==0) begin
			a = 0;
			b = 0;
			c = 0;
			d = 0;
			e = 1;
			f = 0;
			g = 0;
		end
		// A
		else if (w==0 && x==1 && y==0 && z==1) begin
			a = 0;
			b = 0;
			c = 0;
			d = 1;
			e = 0;
			f = 0;
			g = 0;
		end
		// b
		else if (w==0 && x==1 && y==0 && z==0) begin
			a = 1;
			b = 1;
			c = 0;
			d = 0;
			e = 0;
			f = 0;
			g = 0;
		end
		// C
		else if (w==0 && x==0 && y==1 && z==1) begin
			a = 0;
			b = 1;
			c = 1;
			d = 0;
			e = 0;
			f = 0;
			g = 1;
		end
		// d
		else if (w==0 && x==0 && y==1 && z==0) begin
			a = 1;
			b = 0;
			c = 0;
			d = 0;
			e = 0;
			f = 1;
			g = 0;
		end
		// E
		else if (w==0 && x==0 && y==0 && z==1) begin
			a = 0;
			b = 1;
			c = 1;
			d = 0;
			e = 0;
			f = 0;
			g = 0;
		end
		// No Character
		else if (w==0 && x==0 && y==0 && z==0) begin
			a = 1;
			b = 1;
			c = 1;
			d = 1;
			e = 1;
			f = 1;
			g = 1;
		end
		else begin
			$display("S7L #ERROR#");
		end
		dp = 1;
		$display("abcdefg,dp = ",a,b,c,d,e,f,g,dp);
	end

endmodule
