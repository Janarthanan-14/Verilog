// Code your design here
module blocking(input clk,
                input rst,
                output reg a,b,c);
  always@(posedge clk or posedge rst)begin
    if (rst)begin
      a=0; 
      b=0;
      c=0;
    end
      else begin 
        a=1;
        b=a;
        c=b;
      end 
  end
    endmodule
