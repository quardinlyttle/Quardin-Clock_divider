module newClk(clk,outputclk);
  input clk;
  output outputclk;
  reg clk2,clk4,clk8,clk16;

  always@(posedge clk)
    begin
      clk2<=~clk2;
    end
  always@(posedge clk2)
    begin
      clk4<=~clk4;
    end
  always@(posedge clk4)
    begin
      clk8<=~clk8;
    end
  always@(posedge clk8)
    begin
      clk16<=~clk16;
    end
  
  always@(posedge clk16)
    begin
     // mux clkselect(clk2,clk4,c,outputclk);
    outputclk<=~outputclk;
    end
  
endmodule

module mux(a,b,c, out);
  input a,b,c;
  output out;
  wire upper, lower, notc;
  
  not cprime(notc,c);
  and input1(upper,a,c);
  and input2(lower,b,notc);
  or finalout(out,upper,lower);
  
endmodule

  
  
