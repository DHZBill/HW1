`include "hw1.v"

module demorgan4_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AorB, n_AorB;    // Test outputs


  demorgan4 dut(A, B, AorB, n_AorB);

  initial begin
    $display("A B | AorB | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  |   %b  ", A, B, AorB, n_AorB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  |   %b  ", A, B, AorB, n_AorB);
    A=1;B=0; #1
    $display("%b %b |  %b  |   %b  ", A, B, AorB, n_AorB);
    A=1;B=1; #1
    $display("%b %b |  %b  |   %b  ", A, B, AorB, n_AorB);
  end


endmodule    // End demorgan_test