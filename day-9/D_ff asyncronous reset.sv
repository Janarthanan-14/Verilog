module D_ff_sync (
    input wire clk,
    input wire rst_n, 
    input wire data,    
    input wire en,      
    output reg q        
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= 1'b0;         
    else if (en)
        q <= data;         
end

endmodule
