// Code your testbench here
// or browse Examples
module tb ;
  reg clk,rst,in;
  wire out;
  moore_110_detector uut (.clk(clk),.rst(rst),.in(in),.out(out));
  initial clk=0;
  always #2 clk=~clk;
  initial begin 
    in=0;
    #2 rst=0;
    #2 rst=1;
    
    #2 in=1;
    #2 in=0;
    #2 in=0;
    #2 in=0;
    #2 in=1;
    #2 in=1;
    
    #5;
    $finish ;
  end
  initial begin 
    
    $monitor("clk=%b,rst=%b,in=%b,out=%b",clk,rst,in,out);
    $dumpfile ("tb.vcd");
    $dumpvars(0);
  end
endmodule
