// Code your testbench here
module tb ;
  reg d;
  reg clk,rst_n;
  wire  q ;
  dff uut(.d(d),.clk(clk),.rst_n(rst_n),.q(q));
  always #5 clk=~clk ;
  initial begin
     clk=0; rst_n=0; d=0; 
    
  end
  initial begin
    clk=1;
    rst_n =1;
    #5 d=0;
    #5 d=1;
    #100;
    $finish;
  end 
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
    $monitor("d=%b,clk=%b,rst_n=%b,q=%b",d,clk,rst_n,q);
  end
endmodule
    
