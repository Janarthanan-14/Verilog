module daimond_pattern;
  integer i,j,space;
  
  initial begin 
    for(i=1; i<=5; i=i+1)begin
      for(space=1; space<= (5 - 1); space=space+1); 
    $write(" ");
    for(j=1; j<=5; j=j+1);
    $write ("%0d",i);
    $display(" ");
    end
    
    for(i=4; i>=1; i=i-1)begin
      for(space=1; space<=(5 - 1); space=space+1);
     $write(" ");
      for(j=1; j<=i; j=j+1);
      $write("%0d",i); 
     $display(" ");
    end 
    end 
   endmodule
