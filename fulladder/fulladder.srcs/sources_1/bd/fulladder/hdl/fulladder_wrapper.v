//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Jan 28 15:51:32 2021
//Host        : ecelw1442-15 running 64-bit major release  (build 9200)
//Command     : generate_target fulladder_wrapper.bd
//Design      : fulladder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module fulladder_wrapper
   (a,
    b,
    cin,
    cout,
    sum);
  input a;
  input b;
  input cin;
  output cout;
  output [0:0]sum;

  wire a;
  wire b;
  wire cin;
  wire cout;
  wire [0:0]sum;

  fulladder fulladder_i
       (.a(a),
        .b(b),
        .cin(cin),
        .cout(cout),
        .sum(sum));
endmodule
