read_verilog -golden  -pragma_ignore {}  -version sv2012 {RTL/BOOMv3_original/chipyard.TestHarness.MediumBoomConfig.top.v RTL/BOOMv3_original/chipyard.TestHarness.MediumBoomConfig.top.mems.v RTL/BOOMv3_original/miter.v RTL/BOOMv3_original/tilelink_mem.v RTL/BOOMv3_original/param.v }

set_elaborate_option -golden -call_threshold 100 -loop_iter_threshold 300 -x_optimism -verilog_parameter {} -verilog_library_search_order {} -noverilog_library_resolution_ieee_compliance -vhdl_generic {} -vhdl_assertion_report_prefix {onespin} -black_box {} -black_box_empty_modules -black_box_missing_modules -black_box_library {} -black_box_component {} -top {Verilog!work.upec_miter}

elaborate -golden

set_compile_option -golden -black_box_instances {  } -black_box {  {Verilog!work.TLMonitor_57} {Verilog!work.TLMonitor_58} {Verilog!work.TLMonitor_59} {Verilog!work.RegisterFileSynthesizable} {Verilog!work.rob_debug_inst_mem} {Verilog!work.array_0_0} {Verilog!work.tag_array} {Verilog!work.ComposedBranchPredictorBank} {Verilog!work.FetchBuffer} {Verilog!work.FetchTargetQueue} {Verilog!work.TLB} {Verilog!work.NBDTLB} {Verilog!work.l2_tlb_ram} {Verilog!work.dataArrayWay_0} {Verilog!work.tag_array_0} } -cut_signal  {} -top {} -dontcare_handling sim -macro_iterations 4 -undriven_value sim -time_step macro -feedback_loop_latch {} -clock {} -no_clock {} -signal_domains {}

compile -golden

set_mode mv

read_itl  {Properties/upec_checker.vli}

#get_signals -filter state==true

#unblackboxed iregfile{Verilog!work.RegisterFileSynthesizable_1}
