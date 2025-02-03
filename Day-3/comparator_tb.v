module comparatorr;
reg a,b;
wire aequalb,agreaterb,alesserb;
comparator jana(.a(a),.b(b),.aequalb(aequalb),.agreaterb(agreaterb),.alesserb(alesserb));
initial begin 
$dumpfile ("1 bit comparator .vcd");
$dumpvars(); 
$monitor(" a=%b, b=%b, aequalb=%b, agreaterb=%b, alesserb=%b", a,b,aequalb,agreaterb,alesserb);
a=0; b=0; #5;
a=0; b=1; #5;
a=1; b=0; #5;
a=1; b=1; #5;
end 
endmodule

