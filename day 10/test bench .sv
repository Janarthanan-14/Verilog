module test ;
  reg a,b,cin ;
  wire s,c_out ;
  full_adder uut(a , b, cin, s, c_out);
  initial begin 
    $monitor("At time 0%t: a=%b,b=%b,cin=%b => sum =%b,c_out=%b",$time,a,b,cin,s,c_out);

    a=0; b=0; cin=0; #5;
    a=0; b=0; cin=1; #5;
    a=0; b=1; cin=0; #5;
    a=0; b=1; cin=1; #5;
    a=1; b=0; cin=0; #5;
    a=1; b=0; cin=1; #5;
    a=1; b=1; cin=0; #5;
    a=1; b=1; cin=1; #5;
    
    $finish;
  end
endmodule

output 
# KERNEL: At time 0                   0: a=0,b=0,cin=0 => sum =0,c_out=0
# KERNEL: At time 0                   5: a=0,b=0,cin=1 => sum =1,c_out=0
# KERNEL: At time 0                  10: a=0,b=1,cin=0 => sum =1,c_out=0
# KERNEL: At time 0                  15: a=0,b=1,cin=1 => sum =0,c_out=1
# KERNEL: At time 0                  20: a=1,b=0,cin=0 => sum =1,c_out=0
# KERNEL: At time 0                  25: a=1,b=0,cin=1 => sum =0,c_out=1
# KERNEL: At time 0                  30: a=1,b=1,cin=0 => sum =0,c_out=1
# KERNEL: At time 0                  35: a=1,b=1,cin=1 => sum =1,c_out=1
