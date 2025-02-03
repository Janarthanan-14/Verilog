module comparator (a,b,aequalb,agreaterb,alesserb);
input a,b;
output agreaterb,aequalb,alesserb;
wire x,y,w,v;
and a1(x,a,b);
and a2(y,w,v);
not n1 (w,a);
not n2(v,b);
or (aequalb,x,y);
and a3(agreaterb,v,a);
and a4(alesserb,w,b);
endmodule 
