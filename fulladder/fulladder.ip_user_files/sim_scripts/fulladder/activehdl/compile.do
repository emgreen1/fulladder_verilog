vlib work
vlib activehdl

vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/xil_defaultlib

vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../example.srcs/sources_1/bd/fulladder/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/fulladder/ip/fulladder_util_vector_logic_0_0/sim/fulladder_util_vector_logic_0_0.v" \
"../../../bd/fulladder/ip/fulladder_util_vector_logic_0_1/sim/fulladder_util_vector_logic_0_1.v" \
"../../../bd/fulladder/ip/fulladder_test_0_0/sim/fulladder_test_0_0.v" \
"../../../bd/fulladder/ip/fulladder_test_0_1/sim/fulladder_test_0_1.v" \
"../../../bd/fulladder/ip/fulladder_test_1_0/sim/fulladder_test_1_0.v" \
"../../../bd/fulladder/sim/fulladder.v" \

vlog -work xil_defaultlib \
"glbl.v"

