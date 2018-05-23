`timescale 1ns / 1ns

module ClockDivider(ClkIn, ClkOut);
   input ClkIn;
   output reg ClkOut;
  
   parameter DivVal = 2500; // Set to 2500 for Stable Values
   reg[24:0] DivCnt;
   reg ClkInt;
	
   always @(posedge ClkIn) begin
		if( DivCnt == DivVal ) begin
			ClkOut <= ~ClkInt;
         ClkInt <= ~ClkInt;
         DivCnt <= 0;
      end
      else begin
			ClkOut <= ClkInt;
         ClkInt <= ClkInt;
         DivCnt <= DivCnt + 1;
      end
   end
endmodule
