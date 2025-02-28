// Code your testbench here
module tb ;
  reg [3:0]a;
  wire [3:0]b;
  b_g uut(.a(a),.b(b));
  initial begin
    $dumpfile ("tb,vcd");
    $dumpvars();
    a=4'b1101; #5;
    $display ("a=%b,b=%b",a,b);
  end
endmodule
