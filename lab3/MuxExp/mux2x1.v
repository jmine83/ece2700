//Tam Chantem
//09/13/11

`timescale 1 ns/1 ns

module mux2x1(I1, I0, S0, D);
  
  input I1, I0, S0;
  output D;
  reg D;
    
  always @ *
  begin
    D <= (I0 & ~S0) | (I1 & S0);
  end
  
endmodule


