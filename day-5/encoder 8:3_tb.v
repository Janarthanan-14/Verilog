
module tb;
  reg d0,d1,d2,d3,d4,d5,d6,d7;
  wire x,y,z;
  encoder uut(.d0(d0),.d1(d1),.d2(d2),.d3(d3),.d4(d4),.d5(d5),.d6(d6),.d7(d7),.x(x),.y(y),.z(z));
 initial begin
   $dumpfile("tb.vcd");
   $dumpvars();
   $monitor("d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b;x=%b,y=%b,z=%b",d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
   
      d0=0;
      d1=1;
      d2=1;
      d3=1;
      d4=1;
      d5=1;
      d6=1;
      d7=1;
            
              end
              endmodule
                
               
                
                          
