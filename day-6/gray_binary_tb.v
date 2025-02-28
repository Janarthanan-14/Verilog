// Code your testbench here
module tb ;
  reg [4:0] a;
  wire [4:0]b;
  g_b uut (.a(a),.b(b));
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
    a=5'b11011 ; #5;
    $display ("a=%b,b=%b",a,b);
  end 
endmodule
