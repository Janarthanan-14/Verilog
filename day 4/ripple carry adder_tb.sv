module tb_ripple_carry_adder;
    logic [3:0] A, B;  
    logic Cin;         
    logic [3:0] Sum;   
    logic Cout;      

    ripple_carry_adder DUT (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    initial begin
      $monitor("Time=%0t | A=%b, B=%b, Cin=%b , Sum=%b, Cout=%b", $time, A, B, Cin, Sum, Cout);
        
       
        A = 4'b0000; B = 4'b0000; Cin = 0; #10;

        
        A = 4'b0101; B = 4'b0001; Cin = 0; #10;

        
        A = 4'b0010; B = 4'b0001; Cin = 1; #10;

     
        A = 4'b1111; B = 4'b0001; Cin = 1; #10;

   
        A = 4'b0010; B = 4'b0001; Cin = 0; #10;

        
        A = 4'b0000; B = 4'b0001; Cin = 1; #10;

        $finish;
    end
endmodule

output:
# KERNEL: Time=0 | A=0000, B=0000, Cin=0 , Sum=0000, Cout=0
# KERNEL: Time=10 | A=0101, B=0001, Cin=0 , Sum=0110, Cout=0
# KERNEL: Time=20 | A=0010, B=0001, Cin=1 , Sum=0100, Cout=0
# KERNEL: Time=30 | A=1111, B=0001, Cin=1 , Sum=0001, Cout=1
# KERNEL: Time=40 | A=0010, B=0001, Cin=0 , Sum=0011, Cout=0
# KERNEL: Time=50 | A=0000, B=0001, Cin=1 , Sum=0010, Cout=0
