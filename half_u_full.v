// Code your design here
module half(input a,b,output sum,carry);
  assign  sum =a^b;
  assign carry=a&b;
endmodule

module full(input a,b,cin,output sum,carry);
  wire w1;
  wire w2;
  wire w3;
  half h1(.a(a),.b(b),.sum(w1),.carry(w2));
  half h2(.a(cin),.b(w1),.sum(sum),.carry(w3));
  assign carry=w2|w3;
  
    endmodule
