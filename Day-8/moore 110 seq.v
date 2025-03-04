// Code your design here
module moore_110_detector(input clk,rst,in,
                          output reg out);
  parameter [1:0] 
  s0=2'b00,
  s1=2'b01,
  s2=2'b10,
  s3=2'b11;
  reg [1:0] state,next;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        state <=s0;
        else
          state <= next;
    end
  always@(state or in)
    begin
      case(state)
        s0:
          begin
            out= 0;
            if(in)
              next=s1;
            else
              next=s0;
          end
        s1:
          begin
          out=1;
          if(in)
            next=s2;
          else
            next=s0;
        end
        s2:
          begin
            out=2;
            if(in)
              next=s3;
            else
              next =s0;
          end
        s3:
          begin
            out=3;
            if(in)
              next=s0;
            else
              next=s1;
          end
        endcase
    end
        endmodule
        
