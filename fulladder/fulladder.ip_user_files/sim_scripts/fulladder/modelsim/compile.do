vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xil_defaultlib

vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../example.srcs/sources_1/bd/fulladder/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/fulladder/ip/fulladder_util_vector_logic_0_0/sim/fulladder_util_vector_logic_0_0.v" \
"../../../bd/fulladder/ip/fulladder_util_vector_logic_0_1/sim/fulladder_util_vector_logic_0_1.v" \
"../../../bd/fulladder/ip/fulladder_test_0_0/sim/fulladder_test_0_0.v" \
"../../../bd/fulladder/ip/fulladder_test_0_1/sim/fulladder_test_0_1.v" \
"../../../bd/fulladder/ip/fulladder_test_1_0/sim/fulladder_test_1_0.v" \
"../../../bd/fulladder/sim/fulladder.v" \

vlog -work xil_defaultlib \
"glbl.v"

