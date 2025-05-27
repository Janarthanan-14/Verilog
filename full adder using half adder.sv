module half_adder(input a,b,output s,c);
  assign s= a^b;
  assign c= a&b;
endmodule 

module full_adder(input a,b,cin,output s_out,c_out);
  wire s,c0,c1;
  half_adder h1(a,b,s,c0);
  half_adder h2(s,cin,s_out,c1);
  assign c_out = c0|c1;
endmodule 
