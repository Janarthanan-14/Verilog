// Code your design here
module b_g(input [3:0]a,
           output [3:0]b);
  assign b={a[3],a[3]^a[2],a[2]^a[1],a[1]^a[0]};
endmodule
