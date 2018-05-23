`timescale 1 ns/1 ns

module reg4bittest();
  
  reg Clk_s, Hold_s, Rst_s, Set_s;
  reg [3:0] I_s;
  wire [3:0] O_s;
  
  reg4bit r1(Clk_s, Hold_s, Rst_s, Set_s, I_s, O_s);
  
  always begin
    Clk_s <= 0;
    #10;
    Clk_s <= 1;
    #10;
  end
  
  initial begin
    Rst_s <= 1; 
    I_s <= 4'b0000;
    Set_s <= 0;
    Hold_s <= 0;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; I_s <= 4'b1001;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; I_s <= 4'b1011;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; I_s <= 4'b1101;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; I_s <= 4'b0010;
    #5 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; I_s <= 4'b0100;
    #5 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; I_s <= 4'b0110;
  end    
  
endmodule
