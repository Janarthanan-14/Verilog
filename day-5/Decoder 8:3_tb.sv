module tb_8;
  reg [7:0]d;
  wire [2:0]out;
  decoder_8 uut(.d(d),.out(out));
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_8);
    $monitor("Time=%0t,d=%0b,out=%0b",$time,d,out);
    
    repeat(10);
    d=8'b00001xxx; #5;
    #100;
    $finish;
  end 
endmodule
  
output :
# KERNEL: Time=0,d=1xxx,out=11
