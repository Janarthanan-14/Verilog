module ripple_carry_adder (
    input logic [3:0] A, B,  
    input logic Cin,         
    output logic [3:0] Sum, 
    output logic Cout        
);
    logic [3:0] Carry;       

    
    full_adder FA0 (.A(A[0]), .B(B[0]), .Cin(Cin),      .Sum(Sum[0]), .Cout(Carry[0]));
    full_adder FA1 (.A(A[1]), .B(B[1]), .Cin(Carry[0]), .Sum(Sum[1]), .Cout(Carry[1]));
    full_adder FA2 (.A(A[2]), .B(B[2]), .Cin(Carry[1]), .Sum(Sum[2]), .Cout(Carry[2]));
    full_adder FA3 (.A(A[3]), .B(B[3]), .Cin(Carry[2]), .Sum(Sum[3]), .Cout(Cout)); 

endmodule


module full_adder (
    input logic A, B, Cin,
    output logic Sum, Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule
