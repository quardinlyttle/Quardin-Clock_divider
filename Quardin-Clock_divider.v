module clock_divider(
  input clk,
  input reset,
  output reg clk_div2,
  output reg clk_div4,
  output reg clk_div8,
  output reg clk_div16,
  output reg clk_div32
);

  always @(posedge clk)
    clk_div2 <= ~clk_div2;
  always @(posedge clk_div2)
    clk_div4 <= ~clk_div4;
  always @(posedge clk_div4)
    clk_div8 <= ~clk_div8;
`include "ClockDividerRedo.v"

  always @(posedge clk_div8)
    clk_div16 <= ~clk_div16;
  always @(posedge clk_div16)
    clk_div32 <= ~clk_div32;


endmodule
  