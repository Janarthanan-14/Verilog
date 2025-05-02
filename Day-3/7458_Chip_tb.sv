module test_bench;
  reg p1a,p1b,p1c,p1d,p1e,p1f;
  reg p2a,p2b,p2c,p2d;
  wire p1y;
  wire p2y;
  top_module uum(.p1a,.p1b,.p1c,.p1e,.p1f,.p2a,.p2b,.p2c,.p2d,.p1y,.p2y);
  initial begin 
    $dumpfile ("dump.vcd");
    $dumpvars();
    $monitor("p1a=%d, p1b=%d, p1c=%d, p1d=%d, p1e=%d, p1f=%d,p2a=%d, p2b=%d, p2c=%d, p2d=%d,p1y=%d,p2y=%d",p1a, p1b, p1c, p1d, p1e, p1f,p2a, p2b, p2c, p2d,p1y,p2y);
    
    p1a=2; #3;
    p1b=3; #3;
    p1c=4; #3;
    p1d=5; #3; 
    p1e=6; #3;
    p1f=7; #3;
    p2a=8; #3;
    p2b=7; #3;
    p2c=6; #3;
    p2d=5; #3;
  end 
endmodule
