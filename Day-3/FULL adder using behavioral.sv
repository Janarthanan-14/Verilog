module full_adder (input a,b,cin,
                   output reg sum,reg cout);
  always@(*)
  case({a,b,cin})
    default: {sum , cout}=2'b00;
    3'b000 : {sum , cout}=2'b00;
    3'b001 : {sum , cout}=2'b01;
    3'b010 : {sum , cout}=2'b10;
    3'b011 : {sum , cout}=2'b11;
    3'b100 : {sum , cout}=2'b01;
    3'b101 : {sum , cout}=2'b10;
    3'b110 : {sum , cout}=2'b11;
    3'b111 : {sum , cout}=2'b00;
  endcase
  endmodule
  

  TEST BENCH :

  module tb;
  reg a,b,cin;
  wire sum,cout;
  full_adder uut(.a,.b,.cin,.sum,.cout);
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars();
    $monitor("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
     #5; a=0; b=0; cin=0;
     #5; a=0; b=0; cin=1;
     #5; a=0; b=1; cin=0;
     #5; a=0; b=1; cin=1;
     #5; a=1; b=0; cin=0;
     #5; a=1; b=0; cin=1;
     #5; a=1; b=1; cin=0;
     #5; a=1; b=1; cin=1;
    $finish;
  end
endmodule


output :
# KERNEL: a=x,b=x,cin=x,sum=x,cout=x
# KERNEL: a=0,b=0,cin=0,sum=0,cout=0
# KERNEL: a=0,b=0,cin=1,sum=0,cout=1
# KERNEL: a=0,b=1,cin=0,sum=1,cout=0
# KERNEL: a=0,b=1,cin=1,sum=1,cout=1
# KERNEL: a=1,b=0,cin=0,sum=0,cout=1
# KERNEL: a=1,b=0,cin=1,sum=1,cout=0
# KERNEL: a=1,b=1,cin=0,sum=1,cout=1                   
