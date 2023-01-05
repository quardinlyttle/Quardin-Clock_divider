module newBinary(clk2,clk4,clk8,clk16,clk);
  input clk;
  output clk2,clk4,clk8,clk16;
  reg [3:0] counter;
  assign clk2=counter[0];
  assign clk4=counter[1];
  assign clk8=counter[2];
  assign clk16=counter[3];
  
  
  always@(posedge clk)
      counter<=counter+1;
  
  
endmodule

