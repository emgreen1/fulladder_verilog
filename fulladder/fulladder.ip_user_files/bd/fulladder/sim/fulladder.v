//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Jan 28 15:51:32 2021
//Host        : ecelw1442-15 running 64-bit major release  (build 9200)
//Command     : generate_target fulladder.bd
//Design      : fulladder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "fulladder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=fulladder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "fulladder.hwdef" *) 
module fulladder
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

  wire Net1;
  wire Net2;
  wire cin_1;
  wire test_0_Z;
  wire test_1_Z;
  wire test_2_Z;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign Net1 = b;
  assign Net2 = a;
  assign cin_1 = cin;
  assign cout = test_0_Z;
  assign sum[0] = util_vector_logic_0_Res;
  fulladder_test_0_0 test_0
       (.A(test_1_Z),
        .B(test_2_Z),
        .Z(test_0_Z));
  fulladder_test_0_1 test_1
       (.A(util_vector_logic_1_Res),
        .B(cin_1),
        .Z(test_1_Z));
  fulladder_test_1_0 test_2
       (.A(Net2),
        .B(Net1),
        .Z(test_2_Z));
  fulladder_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(test_1_Z),
        .Res(util_vector_logic_0_Res));
  fulladder_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(Net2),
        .Op2(Net1),
        .Res(util_vector_logic_1_Res));
endmodule
