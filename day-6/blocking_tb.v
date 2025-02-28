// Code your testbench here
module tb ;
  reg clk,rst;
  wire a,b,c;
  blocking uut(.clk(clk),.rst(rst),.a(a),.b(b),.c(c));
 always #5 clk=~clk;
     initial begin 
       clk=1;
       rst=0;
       #5;
       rst =0;
       #10;
       $finish;
     end
       initial begin
    $dumpfile("tb.vcd");
    $dumpvars();
   $display ("a=%b,b=%b,c=%b",a,b,c);

  end 
endmodule
