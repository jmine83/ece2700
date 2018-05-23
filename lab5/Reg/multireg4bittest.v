`timescale 1 ns/1 ns

module multireg4bittest();

  reg [3:0] X_s;
  wire [3:0] Y_s;
  reg Clk_s, Hold_s, Rst_s, Set_s;
  reg [1:0] S_s;
  
  multireg4bit r1(Clk_s, Hold_s, Rst_s, Set_s, S_s, X_s, Y_s);
  
  always begin
    Clk_s <= 0;
    #10;
    Clk_s <= 1;
    #10;
  end
  
  initial begin
    Rst_s <= 0; Set_s <= 0; Hold_s <= 0; X_s <= 4'b0011; S_s <= 2'b00;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; X_s <= 4'b0111; S_s <= 2'b01;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; X_s <= 4'b1011; S_s <= 2'b10;
    @(posedge Clk_s);
    #5 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; X_s <= 4'b1111; S_s <= 2'b11;
    @(posedge Clk_s);
    #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; S_s <= 2'b00;
    #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; S_s <= 2'b01;
    #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; S_s <= 2'b10;
	 #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 1; S_s <= 2'b11;
	 @(posedge Clk_s);
	 #2 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; S_s <= 2'b00;
    #2 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; S_s <= 2'b01;
    #2 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; S_s <= 2'b10;
	 #2 Rst_s <= 0; Set_s <= 1; Hold_s <= 0; S_s <= 2'b11;
	 @(posedge Clk_s);
	 #2 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; S_s <= 2'b00;
    #2 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; S_s <= 2'b01;
    #2 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; S_s <= 2'b10;
	 #2 Rst_s <= 1; Set_s <= 0; Hold_s <= 0; S_s <= 2'b11;
	 @(posedge Clk_s);
	 #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; S_s <= 2'b00;
    #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; S_s <= 2'b01;
    #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; S_s <= 2'b10;
	 #2 Rst_s <= 0; Set_s <= 0; Hold_s <= 0; S_s <= 2'b11;
  end    
  
endmodule
