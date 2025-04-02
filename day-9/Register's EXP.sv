module two_registers (
    input  logic        clk,      
    input  logic        reset,    
    input  logic [7:0]  data_in,  
    
    output logic [7:0] reg_normal,  
    output logic [7:0] reg_reverse  
);

   
    always @(posedge clk) begin
        if (reset) begin
            reg_normal <= 8'b0;  
        end else begin
            reg_normal <= data_in; 
        end
    end

   
    always @(posedge clk) begin
        if (reset) begin
            reg_reverse <= 8'b0;  
        end else begin
            
            reg_reverse[0] <= data_in[7];
            reg_reverse[1] <= data_in[6];
            reg_reverse[2] <= data_in[5];
            reg_reverse[3] <= data_in[4];
            reg_reverse[4] <= data_in[3];
            reg_reverse[5] <= data_in[2];
            reg_reverse[6] <= data_in[1];
            reg_reverse[7] <= data_in[0];
        end
    end

endmodule
