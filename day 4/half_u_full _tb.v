
module full_tb();
  reg a,b,cin;
  wire sum,carry;
  full uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial begin
    $dumpfile("full_tb.vcd");
    $dumpvars();
    $monitor ("sum=%b,cout=%b",sum,carry);
     a=0; b=0; cin=0; #2;
     a=0; b=0; cin=1; #2;
     a=0; b=1; cin=0; #2;
     a=0; b=1; cin=1; #2;
     a=1; b=0; cin=0; #2;
     a=1; b=0; cin=1; #2;
     a=1; b=1; cin=0; #2;
     a=1; b=1; cin=1; #2; 
    $finish;
  end 
  endmodule
