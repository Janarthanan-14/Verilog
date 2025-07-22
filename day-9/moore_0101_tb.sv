module tb;
  reg clk, rst_n, x;
  wire z;
  moore uut(clk,rst_n,x,z);
  initial begin 
    x=0;
    #1 rst_n=1;
    #2 rst_n=0;
    #3 x=1;
    #4 x=1;
    #4 x=1;
    #4 x=0;
    #4 x=1;
    #4 x=0;
    #4 x=1;
    #4 x=1;
    #4 x=1;
    #4 x=0;
    #4 x=1;
    #4 x=0;
    #4 x=1;
   
    #10;
    $finish ;
  end 
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  endmodule
