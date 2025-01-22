module half_adder;
reg a,b;
wire sum,carry;
ha abc(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
$dumpfile("ha_tb.vcd");
$dumpvars();
$monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
a=0; b=0; #2;
a=0; b=1; #2;
a=1; b=0; #2;
a=1; b=1; #2;
end 
endmodule
