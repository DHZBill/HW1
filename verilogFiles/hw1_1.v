module demorgan1
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB     // Single bit output, (~A)*(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);      // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);     // AND gate produces nAandnB from nA and nB

endmodule

module demorgan2
(
  input  A,          // Single bit inputs
  input  B,
  output AandB,         // Output intermediate complemented inputs
  output n_AandB    // Single bit output, (~A)*(~B)
);

  wire AandB;
  and andgate(AandB, A, B);      // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not ABinv(n_AandB, AandB);

endmodule

module demorgan3
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAornB    // Single bit output, (~A)*(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);      // Top inverter is named Ainv, takes signal A as input and produces signal nA

endmodule

module demorgan4
(
  input  A,          // Single bit inputs
  input  B,
  output AorB,         // Output intermediate complemented inputs
  output n_AorB    // Single bit output, (~A)*(~B)
);

  wire AorB;
  or orgate(AorB, A, B);      // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not ABinv(n_AorB, AorB);

endmodule