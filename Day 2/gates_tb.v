module logic_gates ();
reg a,b;
wire andx,orx,notx,norx,nandx,x-orx,x-norx;
gates combinational (.a(a),.b(b),.and(andx),.or(orx),.not(notx),.nor(norx),.nand(nandx),.x-or(x-orx),.(x-norx));
initial begin 
$dumpfile("gates_tb.vcd");
$dumpvars();
$monitor(("a=%b,b=%b,and=%b,or=%b,not=%b,nor=%b,nand=%b,x-or=%b,x-nor=%b"a,b,andx,orx,notx,norx,nandx,x-orx,x-norx);
a=0; b=0; #2;
a=0; b=1; #2;
a=1; b=0; #2;
a=1; b=1; #2;
end 
endmodule

