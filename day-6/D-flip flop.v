// Code your design here
module dff(input d,
           input clk,rst_n,
           output reg q);
  always@(posedge clk or negedge rst_n)begin
    if(!rst_n) q<=0;
    else 
      q<=d;
      end
      endmodule
