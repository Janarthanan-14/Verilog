module hs(a,b,diffrence,borrow);
input a,b;
output diffrence,borrow;
assign diffrence=a^b;
assign borrow=~a&b;
endmodule
