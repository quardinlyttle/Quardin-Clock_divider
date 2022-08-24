module binary_counter(
  input clk,
  input reset,
  output reg [3:0] counter,
  output cntr_div2,
  output cntr_div4,
  output cntr_div8,
  output cntr_div16
);
  
  always @(posedge clk)
    begin
      if (reset)
        counter <= 0;
      else
        counter <= counter+1;
    end
  
  assign cntr_div2 = counter [0];
  assign cntr_div4 = counter [1];
  assign cntr_div8 = counter [2];
  assign cntr_div16 = counter [3];
  
endmodule
  

