module tb_ascending_digits;
  int nums[] = '{123, 213, 546, 467, 102};
  int d1, d2, d3;

  initial begin
    $display("Ascending digits output:");
    foreach (nums[i]) begin
      if (nums[i] < 100 || nums[i] > 999) continue; // 3-digit only
      d3 = nums[i] % 10;
      d2 = (nums[i] / 10) % 10;
      d1 = nums[i] / 100;

      if (d1 < d2 && d2 < d3)
        $display("  %0d", nums[i]);
    end
  end
endmodule


result:
# KERNEL:   123
# KERNEL:   467
