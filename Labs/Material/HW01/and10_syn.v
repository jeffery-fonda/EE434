/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06-SP2
// Date      : Fri Jan 12 10:28:38 2018
/////////////////////////////////////////////////////////////


module Vand10 ( a, z );
  input [9:0] a;
  output z;
  wire   n5, n6, n7, n8;

  NOR4_X1 U6 ( .A1(n5), .A2(n6), .A3(n7), .A4(n8), .ZN(z) );
  NAND2_X1 U7 ( .A1(a[9]), .A2(a[8]), .ZN(n8) );
  NAND3_X1 U8 ( .A1(a[6]), .A2(a[5]), .A3(a[7]), .ZN(n7) );
  NAND2_X1 U9 ( .A1(a[4]), .A2(a[3]), .ZN(n6) );
  NAND3_X1 U10 ( .A1(a[1]), .A2(a[0]), .A3(a[2]), .ZN(n5) );
endmodule

