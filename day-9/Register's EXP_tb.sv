module test_two_registers;
    reg clk = 0;
    reg reset = 1;
    reg [7:0] data_in;
    wire [7:0] reg_normal, reg_reverse;

    
    two_registers dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .reg_normal(reg_normal),
        .reg_reverse(reg_reverse)
    );

   
    always #5 clk = ~clk;

    initial begin
        
        #10 reset = 0;
        
       
        data_in = 8'b10101101;
        #10;
        $display("Input: %b, Normal: %b, Reversed: %b", 
                data_in, reg_normal, reg_reverse);
        
        
        data_in = 8'b11110000;
        #10;
        $display("Input: %b, Normal: %b, Reversed: %b", 
                data_in, reg_normal, reg_reverse);
        
        // Finish simulation
        #10 $finish;
    end
endmodule


output :

# KERNEL: Input: 10101101, Normal: 10101101, Reversed: 10110101
# KERNEL: Input: 11110000, Normal: 11110000, Reversed: 00001111
