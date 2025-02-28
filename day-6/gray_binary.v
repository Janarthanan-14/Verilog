// Code your design here
module g_b(input [4:0]a,
           output [4:0]b);
  assign b={a[4],b[4]^a[3],b[3]^a[2],b[2]^a[1],b[1]^a[0]};
endmodule
