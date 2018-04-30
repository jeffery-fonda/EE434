module Vand10 (a, z);
  input [9:0] a;
  output z;

  assign z = a[0] & a[1] & a[2] & a[3] & a[4] & a[5] & a[6] & a[7] & a[8] & a[9];

endmodule

