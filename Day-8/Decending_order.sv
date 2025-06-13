module decending_order;
  int nums[] ='{123,456,789,987,986,876};
  int d1,d2,d3;
  initial begin
  $display ("Decending order output:");
    foreach (nums[i]) begin 
      if(nums[i] < 100 || nums[i] > 999) continue;
    
    d3=nums[i]%10;
    d2=(nums[i]/10) %10;
    d1=nums [i]/100;
    
    if(d1 > d2 && d2 > d3);
    $display ("%0d",nums[i]);
  end
  end
endmodule

output:
# KERNEL: 123
# KERNEL: 456
# KERNEL: 789
# KERNEL: 987
# KERNEL: 986
# KERNEL: 876
# KERNEL: Descending order output:
# KERNEL: 963
# KERNEL: 951
# KERNEL: 321
