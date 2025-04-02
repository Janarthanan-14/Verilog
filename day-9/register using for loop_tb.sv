module test_two_registers;
    reg clk = 0;
    reg reset = 1;
    reg [7:0] data_in;
    wire [7:0]  reg_reverse;

    
    two_registers dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        //.reg_normal(reg_normal),
        .reg_reverse(reg_reverse)
    );

   
    always #5 clk = ~clk;

    initial begin
        
        #10 reset = 0;
        
       
        data_in = 8'b10101101;
        #10;
      $display("Input: %b, Reversed: %b", 
                data_in, , reg_reverse);
        
        
        data_in = 8'b11110000;
        #10;
        $display("Input: , Reversed: %b", 
                data_in,reg_reverse);
        
        
        #10 $finish;
    end
endmodule


output :

# KERNEL: Input: 10101101, Reversed:  181
# KERNEL: Input: , Reversed: 11110000 15
