module half_sub ;
reg a,b;
wire diffrence,barrow;
hs abc(.a(a),.b(b),.diffrence(diffrence),.barrow(barrow));
initial begin
$dumpfile("half_sub.vcd");
$dumpvars();
$monitor("a=%b,b=%b,diffrence=%b,barrow=%b",a,b,diffrence,barrow);
a=0; b=0; #2;
a=0; b=1; #2;
a=1; b=0; #2;
a=1; b=1; #2;
end 
endmodule
