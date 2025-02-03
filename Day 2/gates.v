module gates(a,b,andx,orx,norx,notx,nandx,x_orx,x_norx);
input a,b;
output andx,orx,norx,notx,nandx,x_orx,x_norx;
and (andx,a,b);
or (orx,a,b);
not (notx,a);
nor (norx,a,b);
nand (nandx,a,b);
xor (x_orx,a,b);
xnor(x_norx,a,b);
endmodule
 
