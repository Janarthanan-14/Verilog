module tb;
    reg [2:0] a;
    reg [2:0] b;
    wire [5:0] y1, y2, y3, y4;
    
    // Instantiate the design module
    operator uut (
        .a(a),
        .b(b),
        .y1(y1),
        .y2(y2),
        .y3(y3),
        .y4(y4)
    );
    
    initial begin
        $dumpfile("arith.vcd");
        $dumpvars(0, tb);
      $monitor("Time=%0t a=%b, b=%b, y1=%d, y2=%d, y3=%d, y4=%d", 
                $time, a, b, y1, y2, y3, y4);
        
        a = 3'b010;
        b = 3'b010;
        #5;      
        $finish;
    end
endmodule
