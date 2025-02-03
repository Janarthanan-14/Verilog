module mux4_tb();
reg a,b,c,d,s0,s1;
wire y;
mux4 uut(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.y(y));
initial 
begin
$dumpfile("mux4_tb.vcd");
$dumpvars;
$monitor("a=%b,b=%b,c=%b,d=%b,s0=%b,s1=%b,y=%b",a,b,c,d,s0,s1,y);
#1; a=0; b=0; c=0; d=0; s0=0; s1=0;
#1; a=0; b=0; c=0; d=1; s0=0; s1=1;
#1; a=0; b=0; c=1; d=0; s0=1; s1=0;
#1; a=0; b=0; c=1; d=1; s0=1; s1=1;
end
endmodule


