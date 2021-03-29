
module upec_miter (
  input clock,
  input reset,
  input [63:0] data,
  input [63:0] secret1,
  input [63:0] secret2
  );

  parameter PROTECTED_ADDR = 32'h8abcde00;
  parameter SECRET_TAG = PROTECTED_ADDR[31:12];

  wire         auto_intsink_in_sync_0_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_2_sync_0_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_1_sync_0_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_0_sync_0_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_0_sync_1_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_a_ready_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_a_valid_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_opcode_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_param_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [3:0]  auto_tl_master_xing_out_a_bits_size_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_source_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [31:0] auto_tl_master_xing_out_a_bits_address_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [7:0]  auto_tl_master_xing_out_a_bits_mask_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [63:0] auto_tl_master_xing_out_a_bits_data_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_a_bits_corrupt_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_b_ready_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_b_valid_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [1:0]  auto_tl_master_xing_out_b_bits_param_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [31:0] auto_tl_master_xing_out_b_bits_address_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_c_ready_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_c_valid_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_opcode_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_param_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [3:0]  auto_tl_master_xing_out_c_bits_size_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_source_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [31:0] auto_tl_master_xing_out_c_bits_address_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [63:0] auto_tl_master_xing_out_c_bits_data_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_c_bits_corrupt_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_d_ready_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_valid_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_opcode_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [1:0]  auto_tl_master_xing_out_d_bits_param_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [3:0]  auto_tl_master_xing_out_d_bits_size_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_source_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_sink_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_bits_denied_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [63:0] auto_tl_master_xing_out_d_bits_data_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_bits_corrupt_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_e_ready_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_e_valid_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_e_bits_sink_1; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]


  wire         auto_intsink_in_sync_0_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_2_sync_0_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_1_sync_0_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_0_sync_0_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_int_in_xing_in_0_sync_1_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_a_ready_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_a_valid_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_opcode_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_param_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [3:0]  auto_tl_master_xing_out_a_bits_size_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_a_bits_source_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [31:0] auto_tl_master_xing_out_a_bits_address_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [7:0]  auto_tl_master_xing_out_a_bits_mask_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [63:0] auto_tl_master_xing_out_a_bits_data_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_a_bits_corrupt_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_b_ready_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_b_valid_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [1:0]  auto_tl_master_xing_out_b_bits_param_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [31:0] auto_tl_master_xing_out_b_bits_address_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_c_ready_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_c_valid_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_opcode_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_param_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [3:0]  auto_tl_master_xing_out_c_bits_size_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_c_bits_source_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [31:0] auto_tl_master_xing_out_c_bits_address_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [63:0] auto_tl_master_xing_out_c_bits_data_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_c_bits_corrupt_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_d_ready_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_valid_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_opcode_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [1:0]  auto_tl_master_xing_out_d_bits_param_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [3:0]  auto_tl_master_xing_out_d_bits_size_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_source_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [2:0]  auto_tl_master_xing_out_d_bits_sink_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_bits_denied_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire  [63:0] auto_tl_master_xing_out_d_bits_data_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire         auto_tl_master_xing_out_d_bits_corrupt_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_e_ready_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire        auto_tl_master_xing_out_e_valid_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
  wire [2:0]  auto_tl_master_xing_out_e_bits_sink_2; // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]



  assign auto_int_in_xing_in_2_sync_0_1 = 1'b0;
	assign auto_int_in_xing_in_1_sync_0_1 = 1'b0;
	assign auto_int_in_xing_in_0_sync_0_1 = 1'b0;
	assign auto_int_in_xing_in_0_sync_1_1 = 1'b0;
  assign auto_intsink_in_sync_0_1 = 1'b0;


  assign auto_int_in_xing_in_2_sync_0_2 = 1'b0;
	assign auto_int_in_xing_in_1_sync_0_2 = 1'b0;
	assign auto_int_in_xing_in_0_sync_0_2 = 1'b0;
	assign auto_int_in_xing_in_0_sync_1_2 = 1'b0;
  assign auto_intsink_in_sync_0_2 = 1'b0;


//Instantiation of SoC1
  BoomTile soc1(
		.clock(clock), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410017.4]
		.reset(reset), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410018.4]
		.auto_intsink_in_sync_0(auto_intsink_in_sync_0_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_2_sync_0(auto_int_in_xing_in_2_sync_0_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_1_sync_0(auto_int_in_xing_in_1_sync_0_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_0_sync_0(auto_int_in_xing_in_0_sync_0_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_0_sync_1(auto_int_in_xing_in_0_sync_1_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_ready(auto_tl_master_xing_out_a_ready_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_valid(auto_tl_master_xing_out_a_valid_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_opcode(auto_tl_master_xing_out_a_bits_opcode_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_param(auto_tl_master_xing_out_a_bits_param_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_size(auto_tl_master_xing_out_a_bits_size_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_source(auto_tl_master_xing_out_a_bits_source_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_address(auto_tl_master_xing_out_a_bits_address_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_mask(auto_tl_master_xing_out_a_bits_mask_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_data(auto_tl_master_xing_out_a_bits_data_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_corrupt(auto_tl_master_xing_out_a_bits_corrupt_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_ready(auto_tl_master_xing_out_b_ready_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_valid(auto_tl_master_xing_out_b_valid_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_bits_param(auto_tl_master_xing_out_b_bits_param_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_bits_address(auto_tl_master_xing_out_b_bits_address_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_ready(auto_tl_master_xing_out_c_ready_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_valid(auto_tl_master_xing_out_c_valid_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_opcode(auto_tl_master_xing_out_c_bits_opcode_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_param(auto_tl_master_xing_out_c_bits_param_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_size(auto_tl_master_xing_out_c_bits_size_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_source(auto_tl_master_xing_out_c_bits_source_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_address(auto_tl_master_xing_out_c_bits_address_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_data(auto_tl_master_xing_out_c_bits_data_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_corrupt(auto_tl_master_xing_out_c_bits_corrupt_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_ready(auto_tl_master_xing_out_d_ready_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_valid(auto_tl_master_xing_out_d_valid_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_opcode(auto_tl_master_xing_out_d_bits_opcode_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_param(auto_tl_master_xing_out_d_bits_param_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_size(auto_tl_master_xing_out_d_bits_size_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_source(auto_tl_master_xing_out_d_bits_source_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_sink(auto_tl_master_xing_out_d_bits_sink_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_denied(auto_tl_master_xing_out_d_bits_denied_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_data(auto_tl_master_xing_out_d_bits_data_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_corrupt(auto_tl_master_xing_out_d_bits_corrupt_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_e_valid(auto_tl_master_xing_out_e_valid_1), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_e_bits_sink(auto_tl_master_xing_out_e_bits_sink_1) // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
	);

  //Instantiation of Memory1
  TLMem #(.PROTECTED_ADDR(PROTECTED_ADDR)) mem1(
    .clock(clock),
    .reset(reset),
    .data(data),
    .secret(secret1),
    .auto_sync_xing_out_a_ready(auto_tl_master_xing_out_a_ready_1),
    .auto_sync_xing_out_a_valid(auto_tl_master_xing_out_a_valid_1),
    .auto_sync_xing_out_a_bits_opcode(auto_tl_master_xing_out_a_bits_opcode_1),
    .auto_sync_xing_out_a_bits_param(auto_tl_master_xing_out_a_bits_param_1),
    .auto_sync_xing_out_a_bits_size(auto_tl_master_xing_out_a_bits_size_1),
    .auto_sync_xing_out_a_bits_source(auto_tl_master_xing_out_a_bits_source_1),
    .auto_sync_xing_out_a_bits_address(auto_tl_master_xing_out_a_bits_address_1),
    .auto_sync_xing_out_a_bits_mask(auto_tl_master_xing_out_a_bits_mask_1),
    .auto_sync_xing_out_a_bits_data(auto_tl_master_xing_out_a_bits_data_1),
    .auto_sync_xing_out_b_ready(auto_tl_master_xing_out_b_ready_1),
    .auto_sync_xing_out_b_valid(auto_tl_master_xing_out_b_valid_1),
    .auto_sync_xing_out_b_bits_param(auto_tl_master_xing_out_b_bits_param_1),
    .auto_sync_xing_out_b_bits_address(auto_tl_master_xing_out_b_bits_address_1),
    .auto_sync_xing_out_c_ready(auto_tl_master_xing_out_c_ready_1),
    .auto_sync_xing_out_c_valid(auto_tl_master_xing_out_c_valid_1),
    .auto_sync_xing_out_c_bits_opcode(auto_tl_master_xing_out_c_bits_opcode_1),
    .auto_sync_xing_out_c_bits_size(auto_tl_master_xing_out_c_bits_size_1),
    .auto_sync_xing_out_c_bits_source(auto_tl_master_xing_out_c_bits_source_1),
    .auto_sync_xing_out_c_bits_address(auto_tl_master_xing_out_c_bits_address_1),
    .auto_sync_xing_out_c_bits_data(auto_tl_master_xing_out_c_bits_data_1),
    .auto_sync_xing_out_d_ready(auto_tl_master_xing_out_d_ready_1),
    .auto_sync_xing_out_d_valid(auto_tl_master_xing_out_d_valid_1),
    .auto_sync_xing_out_d_bits_opcode(auto_tl_master_xing_out_d_bits_opcode_1),
    .auto_sync_xing_out_d_bits_param(auto_tl_master_xing_out_d_bits_param_1),
    .auto_sync_xing_out_d_bits_size(auto_tl_master_xing_out_d_bits_size_1),
    .auto_sync_xing_out_d_bits_source(auto_tl_master_xing_out_d_bits_source_1),
    .auto_sync_xing_out_d_bits_sink(auto_tl_master_xing_out_d_bits_sink_1),
    .auto_sync_xing_out_d_bits_data(auto_tl_master_xing_out_d_bits_data_1),
    .auto_sync_xing_out_d_bits_error(auto_tl_master_xing_out_d_bits_denied_1),
    .auto_sync_xing_out_e_ready(auto_tl_master_xing_out_e_ready_1),
    .auto_sync_xing_out_e_valid(auto_tl_master_xing_out_e_valid_1),
    .auto_sync_xing_out_e_bits_sink(auto_tl_master_xing_out_e_bits_sink_1)
  );

	assign auto_tl_master_xing_out_d_bits_corrupt_1 = auto_tl_master_xing_out_d_bits_denied_1;

  //Instantiation of SoC2
  BoomTile soc2(
		.clock(clock), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410017.4]
		.reset(reset), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410018.4]
		.auto_intsink_in_sync_0(auto_intsink_in_sync_0_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_2_sync_0(auto_int_in_xing_in_2_sync_0_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_1_sync_0(auto_int_in_xing_in_1_sync_0_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_0_sync_0(auto_int_in_xing_in_0_sync_0_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_int_in_xing_in_0_sync_1(auto_int_in_xing_in_0_sync_1_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_ready(auto_tl_master_xing_out_a_ready_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_valid(auto_tl_master_xing_out_a_valid_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_opcode(auto_tl_master_xing_out_a_bits_opcode_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_param(auto_tl_master_xing_out_a_bits_param_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_size(auto_tl_master_xing_out_a_bits_size_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_source(auto_tl_master_xing_out_a_bits_source_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_address(auto_tl_master_xing_out_a_bits_address_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_mask(auto_tl_master_xing_out_a_bits_mask_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_data(auto_tl_master_xing_out_a_bits_data_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_a_bits_corrupt(auto_tl_master_xing_out_a_bits_corrupt_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_ready(auto_tl_master_xing_out_b_ready_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_valid(auto_tl_master_xing_out_b_valid_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_bits_param(auto_tl_master_xing_out_b_bits_param_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_b_bits_address(auto_tl_master_xing_out_b_bits_address_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_ready(auto_tl_master_xing_out_c_ready_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_valid(auto_tl_master_xing_out_c_valid_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_opcode(auto_tl_master_xing_out_c_bits_opcode_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_param(auto_tl_master_xing_out_c_bits_param_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_size(auto_tl_master_xing_out_c_bits_size_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_source(auto_tl_master_xing_out_c_bits_source_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_address(auto_tl_master_xing_out_c_bits_address_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_data(auto_tl_master_xing_out_c_bits_data_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_c_bits_corrupt(auto_tl_master_xing_out_c_bits_corrupt_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_ready(auto_tl_master_xing_out_d_ready_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_valid(auto_tl_master_xing_out_d_valid_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_opcode(auto_tl_master_xing_out_d_bits_opcode_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_param(auto_tl_master_xing_out_d_bits_param_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_size(auto_tl_master_xing_out_d_bits_size_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_source(auto_tl_master_xing_out_d_bits_source_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_sink(auto_tl_master_xing_out_d_bits_sink_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_denied(auto_tl_master_xing_out_d_bits_denied_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_data(auto_tl_master_xing_out_d_bits_data_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_d_bits_corrupt(auto_tl_master_xing_out_d_bits_corrupt_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_e_valid(auto_tl_master_xing_out_e_valid_2), // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
		.auto_tl_master_xing_out_e_bits_sink(auto_tl_master_xing_out_e_bits_sink_2) // @[:chipyard.TestHarness.MediumBoomConfig.fir@410019.4]
	);

  //Instantiation of Memory2
  TLMem #(.PROTECTED_ADDR(PROTECTED_ADDR)) mem2(
    .clock(clock),
    .reset(reset),
    .data(data),
    .secret(secret2),
    .auto_sync_xing_out_a_ready(auto_tl_master_xing_out_a_ready_2),
    .auto_sync_xing_out_a_valid(auto_tl_master_xing_out_a_valid_2),
    .auto_sync_xing_out_a_bits_opcode(auto_tl_master_xing_out_a_bits_opcode_2),
    .auto_sync_xing_out_a_bits_param(auto_tl_master_xing_out_a_bits_param_2),
    .auto_sync_xing_out_a_bits_size(auto_tl_master_xing_out_a_bits_size_2),
    .auto_sync_xing_out_a_bits_source(auto_tl_master_xing_out_a_bits_source_2),
    .auto_sync_xing_out_a_bits_address(auto_tl_master_xing_out_a_bits_address_2),
    .auto_sync_xing_out_a_bits_mask(auto_tl_master_xing_out_a_bits_mask_2),
    .auto_sync_xing_out_a_bits_data(auto_tl_master_xing_out_a_bits_data_2),
    .auto_sync_xing_out_b_ready(auto_tl_master_xing_out_b_ready_2),
    .auto_sync_xing_out_b_valid(auto_tl_master_xing_out_b_valid_2),
    .auto_sync_xing_out_b_bits_param(auto_tl_master_xing_out_b_bits_param_2),
    .auto_sync_xing_out_b_bits_address(auto_tl_master_xing_out_b_bits_address_2),
    .auto_sync_xing_out_c_ready(auto_tl_master_xing_out_c_ready_2),
    .auto_sync_xing_out_c_valid(auto_tl_master_xing_out_c_valid_2),
    .auto_sync_xing_out_c_bits_opcode(auto_tl_master_xing_out_c_bits_opcode_2),
    .auto_sync_xing_out_c_bits_size(auto_tl_master_xing_out_c_bits_size_2),
    .auto_sync_xing_out_c_bits_source(auto_tl_master_xing_out_c_bits_source_2),
    .auto_sync_xing_out_c_bits_address(auto_tl_master_xing_out_c_bits_address_2),
    .auto_sync_xing_out_c_bits_data(auto_tl_master_xing_out_c_bits_data_2),
    .auto_sync_xing_out_d_ready(auto_tl_master_xing_out_d_ready_2),
    .auto_sync_xing_out_d_valid(auto_tl_master_xing_out_d_valid_2),
    .auto_sync_xing_out_d_bits_opcode(auto_tl_master_xing_out_d_bits_opcode_2),
    .auto_sync_xing_out_d_bits_param(auto_tl_master_xing_out_d_bits_param_2),
    .auto_sync_xing_out_d_bits_size(auto_tl_master_xing_out_d_bits_size_2),
    .auto_sync_xing_out_d_bits_source(auto_tl_master_xing_out_d_bits_source_2),
    .auto_sync_xing_out_d_bits_sink(auto_tl_master_xing_out_d_bits_sink_2),
    .auto_sync_xing_out_d_bits_data(auto_tl_master_xing_out_d_bits_data_2),
    .auto_sync_xing_out_d_bits_error(auto_tl_master_xing_out_d_bits_denied_2),
    .auto_sync_xing_out_e_ready(auto_tl_master_xing_out_e_ready_2),
    .auto_sync_xing_out_e_valid(auto_tl_master_xing_out_e_valid_2),
    .auto_sync_xing_out_e_bits_sink(auto_tl_master_xing_out_e_bits_sink_2)
  );

	assign auto_tl_master_xing_out_d_bits_corrupt_2 = auto_tl_master_xing_out_d_bits_denied_2;

//*************MicroEquivalence**************//
// Some info on ROB: it always commit a full row (two uop at a time), uop in
// the same row does not necessarily have the same br tag (mask)
//
// Is pnr (point of no return) important? pnr should always be after head and
// before root_id
//
//For which of them do we need to check both instances?

//Function that returns if the given ID in the ROB is a branch instruction
	function automatic isSpi; // should check for both br and j and jal and jalr?
		input [5:0] id;
		begin
			isSpi = ( (id == 6'b000000) ? soc1.core.rob.rob_uop__0_is_br   : 1'b1 ) &&
							( (id == 6'b000001) ? soc1.core.rob.rob_uop_1_0_is_br   : 1'b1 ) &&
							( (id == 6'b000010) ? soc1.core.rob.rob_uop__1_is_br   : 1'b1 ) &&
							( (id == 6'b000011) ? soc1.core.rob.rob_uop_1_1_is_br   : 1'b1 ) &&
							( (id == 6'b000100) ? soc1.core.rob.rob_uop__2_is_br   : 1'b1 ) &&
							( (id == 6'b000101) ? soc1.core.rob.rob_uop_1_2_is_br   : 1'b1 ) &&
							( (id == 6'b000110) ? soc1.core.rob.rob_uop__3_is_br   : 1'b1 ) &&
							( (id == 6'b000111) ? soc1.core.rob.rob_uop_1_3_is_br   : 1'b1 ) &&
							( (id == 6'b001000) ? soc1.core.rob.rob_uop__4_is_br   : 1'b1 ) &&
							( (id == 6'b001001) ? soc1.core.rob.rob_uop_1_4_is_br   : 1'b1 ) &&
							( (id == 6'b001010) ? soc1.core.rob.rob_uop__5_is_br   : 1'b1 ) &&
							( (id == 6'b001011) ? soc1.core.rob.rob_uop_1_5_is_br   : 1'b1 ) &&
							( (id == 6'b001100) ? soc1.core.rob.rob_uop__6_is_br   : 1'b1 ) &&
							( (id == 6'b001101) ? soc1.core.rob.rob_uop_1_6_is_br   : 1'b1 ) &&
							( (id == 6'b001110) ? soc1.core.rob.rob_uop__7_is_br   : 1'b1 ) &&
							( (id == 6'b001111) ? soc1.core.rob.rob_uop_1_7_is_br   : 1'b1 ) &&
							( (id == 6'b010000) ? soc1.core.rob.rob_uop__8_is_br   : 1'b1 ) &&
							( (id == 6'b010001) ? soc1.core.rob.rob_uop_1_8_is_br   : 1'b1 ) &&
							( (id == 6'b010010) ? soc1.core.rob.rob_uop__9_is_br   : 1'b1 ) &&
							( (id == 6'b010011) ? soc1.core.rob.rob_uop_1_9_is_br   : 1'b1 ) &&
							( (id == 6'b010100) ? soc1.core.rob.rob_uop__10_is_br   : 1'b1 ) &&
							( (id == 6'b010101) ? soc1.core.rob.rob_uop_1_10_is_br   : 1'b1 ) &&
							( (id == 6'b010110) ? soc1.core.rob.rob_uop__11_is_br   : 1'b1 ) &&
							( (id == 6'b010111) ? soc1.core.rob.rob_uop_1_11_is_br   : 1'b1 ) &&
							( (id == 6'b011000) ? soc1.core.rob.rob_uop__12_is_br   : 1'b1 ) &&
							( (id == 6'b011001) ? soc1.core.rob.rob_uop_1_12_is_br   : 1'b1 ) &&
							( (id == 6'b011010) ? soc1.core.rob.rob_uop__13_is_br   : 1'b1 ) &&
							( (id == 6'b011011) ? soc1.core.rob.rob_uop_1_13_is_br   : 1'b1 ) &&
							( (id == 6'b011100) ? soc1.core.rob.rob_uop__14_is_br   : 1'b1 ) &&
							( (id == 6'b011101) ? soc1.core.rob.rob_uop_1_14_is_br   : 1'b1 ) &&
							( (id == 6'b011110) ? soc1.core.rob.rob_uop__15_is_br   : 1'b1 ) &&
							( (id == 6'b011111) ? soc1.core.rob.rob_uop_1_15_is_br   : 1'b1 ) &&
							( (id == 6'b100000) ? soc1.core.rob.rob_uop__16_is_br   : 1'b1 ) &&
							( (id == 6'b100001) ? soc1.core.rob.rob_uop_1_16_is_br   : 1'b1 ) &&
							( (id == 6'b100010) ? soc1.core.rob.rob_uop__17_is_br   : 1'b1 ) &&
							( (id == 6'b100011) ? soc1.core.rob.rob_uop_1_17_is_br   : 1'b1 ) &&
							( (id == 6'b100100) ? soc1.core.rob.rob_uop__18_is_br   : 1'b1 ) &&
							( (id == 6'b100101) ? soc1.core.rob.rob_uop_1_18_is_br   : 1'b1 ) &&
							( (id == 6'b100110) ? soc1.core.rob.rob_uop__19_is_br   : 1'b1 ) &&
							( (id == 6'b100111) ? soc1.core.rob.rob_uop_1_19_is_br   : 1'b1 ) &&
							( (id == 6'b101000) ? soc1.core.rob.rob_uop__20_is_br   : 1'b1 ) &&
							( (id == 6'b101001) ? soc1.core.rob.rob_uop_1_20_is_br   : 1'b1 ) &&
							( (id == 6'b101010) ? soc1.core.rob.rob_uop__21_is_br   : 1'b1 ) &&
							( (id == 6'b101011) ? soc1.core.rob.rob_uop_1_21_is_br   : 1'b1 ) &&
							( (id == 6'b101100) ? soc1.core.rob.rob_uop__22_is_br   : 1'b1 ) &&
							( (id == 6'b101101) ? soc1.core.rob.rob_uop_1_22_is_br   : 1'b1 ) &&
							( (id == 6'b101110) ? soc1.core.rob.rob_uop__23_is_br   : 1'b1 ) &&
							( (id == 6'b101111) ? soc1.core.rob.rob_uop_1_23_is_br   : 1'b1 ) &&
							( (id == 6'b110000) ? soc1.core.rob.rob_uop__24_is_br   : 1'b1 ) &&
							( (id == 6'b110001) ? soc1.core.rob.rob_uop_1_24_is_br   : 1'b1 ) &&
							( (id == 6'b110010) ? soc1.core.rob.rob_uop__25_is_br   : 1'b1 ) &&
							( (id == 6'b110011) ? soc1.core.rob.rob_uop_1_25_is_br   : 1'b1 ) &&
							( (id == 6'b110100) ? soc1.core.rob.rob_uop__26_is_br   : 1'b1 ) &&
							( (id == 6'b110101) ? soc1.core.rob.rob_uop_1_26_is_br   : 1'b1 ) &&
							( (id == 6'b110110) ? soc1.core.rob.rob_uop__27_is_br   : 1'b1 ) &&
							( (id == 6'b110111) ? soc1.core.rob.rob_uop_1_27_is_br   : 1'b1 ) &&
							( (id == 6'b111000) ? soc1.core.rob.rob_uop__28_is_br   : 1'b1 ) &&
							( (id == 6'b111001) ? soc1.core.rob.rob_uop_1_28_is_br   : 1'b1 ) &&
							( (id == 6'b111010) ? soc1.core.rob.rob_uop__29_is_br   : 1'b1 ) &&
							( (id == 6'b111011) ? soc1.core.rob.rob_uop_1_29_is_br   : 1'b1 ) &&
							( (id == 6'b111100) ? soc1.core.rob.rob_uop__30_is_br   : 1'b1 ) &&
							( (id == 6'b111101) ? soc1.core.rob.rob_uop_1_30_is_br   : 1'b1 ) &&
							( (id == 6'b111110) ? soc1.core.rob.rob_uop__31_is_br   : 1'b1 ) &&
							( (id == 6'b111111) ? soc1.core.rob.rob_uop_1_31_is_br   : 1'b1 ) &&
// soc2
							( (id == 6'b000000) ? soc2.core.rob.rob_uop__0_is_br   : 1'b1 ) &&
							( (id == 6'b000001) ? soc2.core.rob.rob_uop_1_0_is_br   : 1'b1 ) &&
							( (id == 6'b000010) ? soc2.core.rob.rob_uop__1_is_br   : 1'b1 ) &&
							( (id == 6'b000011) ? soc2.core.rob.rob_uop_1_1_is_br   : 1'b1 ) &&
							( (id == 6'b000100) ? soc2.core.rob.rob_uop__2_is_br   : 1'b1 ) &&
							( (id == 6'b000101) ? soc2.core.rob.rob_uop_1_2_is_br   : 1'b1 ) &&
							( (id == 6'b000110) ? soc2.core.rob.rob_uop__3_is_br   : 1'b1 ) &&
							( (id == 6'b000111) ? soc2.core.rob.rob_uop_1_3_is_br   : 1'b1 ) &&
							( (id == 6'b001000) ? soc2.core.rob.rob_uop__4_is_br   : 1'b1 ) &&
							( (id == 6'b001001) ? soc2.core.rob.rob_uop_1_4_is_br   : 1'b1 ) &&
							( (id == 6'b001010) ? soc2.core.rob.rob_uop__5_is_br   : 1'b1 ) &&
							( (id == 6'b001011) ? soc2.core.rob.rob_uop_1_5_is_br   : 1'b1 ) &&
							( (id == 6'b001100) ? soc2.core.rob.rob_uop__6_is_br   : 1'b1 ) &&
							( (id == 6'b001101) ? soc2.core.rob.rob_uop_1_6_is_br   : 1'b1 ) &&
							( (id == 6'b001110) ? soc2.core.rob.rob_uop__7_is_br   : 1'b1 ) &&
							( (id == 6'b001111) ? soc2.core.rob.rob_uop_1_7_is_br   : 1'b1 ) &&
							( (id == 6'b010000) ? soc2.core.rob.rob_uop__8_is_br   : 1'b1 ) &&
							( (id == 6'b010001) ? soc2.core.rob.rob_uop_1_8_is_br   : 1'b1 ) &&
							( (id == 6'b010010) ? soc2.core.rob.rob_uop__9_is_br   : 1'b1 ) &&
							( (id == 6'b010011) ? soc2.core.rob.rob_uop_1_9_is_br   : 1'b1 ) &&
							( (id == 6'b010100) ? soc2.core.rob.rob_uop__10_is_br   : 1'b1 ) &&
							( (id == 6'b010101) ? soc2.core.rob.rob_uop_1_10_is_br   : 1'b1 ) &&
							( (id == 6'b010110) ? soc2.core.rob.rob_uop__11_is_br   : 1'b1 ) &&
							( (id == 6'b010111) ? soc2.core.rob.rob_uop_1_11_is_br   : 1'b1 ) &&
							( (id == 6'b011000) ? soc2.core.rob.rob_uop__12_is_br   : 1'b1 ) &&
							( (id == 6'b011001) ? soc2.core.rob.rob_uop_1_12_is_br   : 1'b1 ) &&
							( (id == 6'b011010) ? soc2.core.rob.rob_uop__13_is_br   : 1'b1 ) &&
							( (id == 6'b011011) ? soc2.core.rob.rob_uop_1_13_is_br   : 1'b1 ) &&
							( (id == 6'b011100) ? soc2.core.rob.rob_uop__14_is_br   : 1'b1 ) &&
							( (id == 6'b011101) ? soc2.core.rob.rob_uop_1_14_is_br   : 1'b1 ) &&
							( (id == 6'b011110) ? soc2.core.rob.rob_uop__15_is_br   : 1'b1 ) &&
							( (id == 6'b011111) ? soc2.core.rob.rob_uop_1_15_is_br   : 1'b1 ) &&
							( (id == 6'b100000) ? soc2.core.rob.rob_uop__16_is_br   : 1'b1 ) &&
							( (id == 6'b100001) ? soc2.core.rob.rob_uop_1_16_is_br   : 1'b1 ) &&
							( (id == 6'b100010) ? soc2.core.rob.rob_uop__17_is_br   : 1'b1 ) &&
							( (id == 6'b100011) ? soc2.core.rob.rob_uop_1_17_is_br   : 1'b1 ) &&
							( (id == 6'b100100) ? soc2.core.rob.rob_uop__18_is_br   : 1'b1 ) &&
							( (id == 6'b100101) ? soc2.core.rob.rob_uop_1_18_is_br   : 1'b1 ) &&
							( (id == 6'b100110) ? soc2.core.rob.rob_uop__19_is_br   : 1'b1 ) &&
							( (id == 6'b100111) ? soc2.core.rob.rob_uop_1_19_is_br   : 1'b1 ) &&
							( (id == 6'b101000) ? soc2.core.rob.rob_uop__20_is_br   : 1'b1 ) &&
							( (id == 6'b101001) ? soc2.core.rob.rob_uop_1_20_is_br   : 1'b1 ) &&
							( (id == 6'b101010) ? soc2.core.rob.rob_uop__21_is_br   : 1'b1 ) &&
							( (id == 6'b101011) ? soc2.core.rob.rob_uop_1_21_is_br   : 1'b1 ) &&
							( (id == 6'b101100) ? soc2.core.rob.rob_uop__22_is_br   : 1'b1 ) &&
							( (id == 6'b101101) ? soc2.core.rob.rob_uop_1_22_is_br   : 1'b1 ) &&
							( (id == 6'b101110) ? soc2.core.rob.rob_uop__23_is_br   : 1'b1 ) &&
							( (id == 6'b101111) ? soc2.core.rob.rob_uop_1_23_is_br   : 1'b1 ) &&
							( (id == 6'b110000) ? soc2.core.rob.rob_uop__24_is_br   : 1'b1 ) &&
							( (id == 6'b110001) ? soc2.core.rob.rob_uop_1_24_is_br   : 1'b1 ) &&
							( (id == 6'b110010) ? soc2.core.rob.rob_uop__25_is_br   : 1'b1 ) &&
							( (id == 6'b110011) ? soc2.core.rob.rob_uop_1_25_is_br   : 1'b1 ) &&
							( (id == 6'b110100) ? soc2.core.rob.rob_uop__26_is_br   : 1'b1 ) &&
							( (id == 6'b110101) ? soc2.core.rob.rob_uop_1_26_is_br   : 1'b1 ) &&
							( (id == 6'b110110) ? soc2.core.rob.rob_uop__27_is_br   : 1'b1 ) &&
							( (id == 6'b110111) ? soc2.core.rob.rob_uop_1_27_is_br   : 1'b1 ) &&
							( (id == 6'b111000) ? soc2.core.rob.rob_uop__28_is_br   : 1'b1 ) &&
							( (id == 6'b111001) ? soc2.core.rob.rob_uop_1_28_is_br   : 1'b1 ) &&
							( (id == 6'b111010) ? soc2.core.rob.rob_uop__29_is_br   : 1'b1 ) &&
							( (id == 6'b111011) ? soc2.core.rob.rob_uop_1_29_is_br   : 1'b1 ) &&
							( (id == 6'b111100) ? soc2.core.rob.rob_uop__30_is_br   : 1'b1 ) &&
							( (id == 6'b111101) ? soc2.core.rob.rob_uop_1_30_is_br   : 1'b1 ) &&
							( (id == 6'b111110) ? soc2.core.rob.rob_uop__31_is_br   : 1'b1 ) &&
							( (id == 6'b111111) ? soc2.core.rob.rob_uop_1_31_is_br   : 1'b1 );
		end
	endfunction

//Function that returns if the given ID in the ROB in SoC1 has its busy bit set
	function automatic isPending_1;
		input [5:0] id;
		begin
			isPending_1 = ( (id == 6'b000000) ? soc1.core.rob.rob_bsy__0 : 1'b1 ) &&
										( (id == 6'b000001) ? soc1.core.rob.rob_bsy_1_0 : 1'b1 ) &&
										( (id == 6'b000010) ? soc1.core.rob.rob_bsy__1 : 1'b1 ) &&
										( (id == 6'b000011) ? soc1.core.rob.rob_bsy_1_1 : 1'b1 ) &&
										( (id == 6'b000100) ? soc1.core.rob.rob_bsy__2 : 1'b1 ) &&
										( (id == 6'b000101) ? soc1.core.rob.rob_bsy_1_2 : 1'b1 ) &&
										( (id == 6'b000110) ? soc1.core.rob.rob_bsy__3 : 1'b1 ) &&
										( (id == 6'b000111) ? soc1.core.rob.rob_bsy_1_3 : 1'b1 ) &&
										( (id == 6'b001000) ? soc1.core.rob.rob_bsy__4 : 1'b1 ) &&
										( (id == 6'b001001) ? soc1.core.rob.rob_bsy_1_4 : 1'b1 ) &&
										( (id == 6'b001010) ? soc1.core.rob.rob_bsy__5 : 1'b1 ) &&
										( (id == 6'b001011) ? soc1.core.rob.rob_bsy_1_5 : 1'b1 ) &&
										( (id == 6'b001100) ? soc1.core.rob.rob_bsy__6 : 1'b1 ) &&
										( (id == 6'b001101) ? soc1.core.rob.rob_bsy_1_6 : 1'b1 ) &&
										( (id == 6'b001110) ? soc1.core.rob.rob_bsy__7 : 1'b1 ) &&
										( (id == 6'b001111) ? soc1.core.rob.rob_bsy_1_7 : 1'b1 ) &&
										( (id == 6'b010000) ? soc1.core.rob.rob_bsy__8 : 1'b1 ) &&
										( (id == 6'b010001) ? soc1.core.rob.rob_bsy_1_8 : 1'b1 ) &&
										( (id == 6'b010010) ? soc1.core.rob.rob_bsy__9 : 1'b1 ) &&
										( (id == 6'b010011) ? soc1.core.rob.rob_bsy_1_9 : 1'b1 ) &&
										( (id == 6'b010100) ? soc1.core.rob.rob_bsy__10 : 1'b1 ) &&
										( (id == 6'b010101) ? soc1.core.rob.rob_bsy_1_10 : 1'b1 ) &&
										( (id == 6'b010110) ? soc1.core.rob.rob_bsy__11 : 1'b1 ) &&
										( (id == 6'b010111) ? soc1.core.rob.rob_bsy_1_11 : 1'b1 ) &&
										( (id == 6'b011000) ? soc1.core.rob.rob_bsy__12 : 1'b1 ) &&
										( (id == 6'b011001) ? soc1.core.rob.rob_bsy_1_12 : 1'b1 ) &&
										( (id == 6'b011010) ? soc1.core.rob.rob_bsy__13 : 1'b1 ) &&
										( (id == 6'b011011) ? soc1.core.rob.rob_bsy_1_13 : 1'b1 ) &&
										( (id == 6'b011100) ? soc1.core.rob.rob_bsy__14 : 1'b1 ) &&
										( (id == 6'b011101) ? soc1.core.rob.rob_bsy_1_14 : 1'b1 ) &&
										( (id == 6'b011110) ? soc1.core.rob.rob_bsy__15 : 1'b1 ) &&
										( (id == 6'b011111) ? soc1.core.rob.rob_bsy_1_15 : 1'b1 ) &&
										( (id == 6'b100000) ? soc1.core.rob.rob_bsy__16 : 1'b1 ) &&
										( (id == 6'b100001) ? soc1.core.rob.rob_bsy_1_16 : 1'b1 ) &&
										( (id == 6'b100010) ? soc1.core.rob.rob_bsy__17 : 1'b1 ) &&
										( (id == 6'b100011) ? soc1.core.rob.rob_bsy_1_17 : 1'b1 ) &&
										( (id == 6'b100100) ? soc1.core.rob.rob_bsy__18 : 1'b1 ) &&
										( (id == 6'b100101) ? soc1.core.rob.rob_bsy_1_18 : 1'b1 ) &&
										( (id == 6'b100110) ? soc1.core.rob.rob_bsy__19 : 1'b1 ) &&
										( (id == 6'b100111) ? soc1.core.rob.rob_bsy_1_19 : 1'b1 ) &&
										( (id == 6'b101000) ? soc1.core.rob.rob_bsy__20 : 1'b1 ) &&
										( (id == 6'b101001) ? soc1.core.rob.rob_bsy_1_20 : 1'b1 ) &&
										( (id == 6'b101010) ? soc1.core.rob.rob_bsy__21 : 1'b1 ) &&
										( (id == 6'b101011) ? soc1.core.rob.rob_bsy_1_21 : 1'b1 ) &&
										( (id == 6'b101100) ? soc1.core.rob.rob_bsy__22 : 1'b1 ) &&
										( (id == 6'b101101) ? soc1.core.rob.rob_bsy_1_22 : 1'b1 ) &&
										( (id == 6'b101110) ? soc1.core.rob.rob_bsy__23 : 1'b1 ) &&
										( (id == 6'b101111) ? soc1.core.rob.rob_bsy_1_23 : 1'b1 ) &&
										( (id == 6'b110000) ? soc1.core.rob.rob_bsy__24 : 1'b1 ) &&
										( (id == 6'b110001) ? soc1.core.rob.rob_bsy_1_24 : 1'b1 ) &&
										( (id == 6'b110010) ? soc1.core.rob.rob_bsy__25 : 1'b1 ) &&
										( (id == 6'b110011) ? soc1.core.rob.rob_bsy_1_25 : 1'b1 ) &&
										( (id == 6'b110100) ? soc1.core.rob.rob_bsy__26 : 1'b1 ) &&
										( (id == 6'b110101) ? soc1.core.rob.rob_bsy_1_26 : 1'b1 ) &&
										( (id == 6'b110110) ? soc1.core.rob.rob_bsy__27 : 1'b1 ) &&
										( (id == 6'b110111) ? soc1.core.rob.rob_bsy_1_27 : 1'b1 ) &&
										( (id == 6'b111000) ? soc1.core.rob.rob_bsy__28 : 1'b1 ) &&
										( (id == 6'b111001) ? soc1.core.rob.rob_bsy_1_28 : 1'b1 ) &&
										( (id == 6'b111010) ? soc1.core.rob.rob_bsy__29 : 1'b1 ) &&
										( (id == 6'b111011) ? soc1.core.rob.rob_bsy_1_29 : 1'b1 ) &&
										( (id == 6'b111100) ? soc1.core.rob.rob_bsy__30 : 1'b1 ) &&
										( (id == 6'b111101) ? soc1.core.rob.rob_bsy_1_30 : 1'b1 ) &&
										( (id == 6'b111110) ? soc1.core.rob.rob_bsy__31 : 1'b1 ) &&
										( (id == 6'b111111) ? soc1.core.rob.rob_bsy_1_31 : 1'b1 );
		end
	endfunction

  //Function that returns if the given ID in the ROB in SoC2 has its busy bit set
	function automatic isPending_2;
		input [5:0] id;
		begin
			isPending_2 = ( (id == 6'b000000) ? soc2.core.rob.rob_bsy__0 : 1'b1 ) &&
										( (id == 6'b000001) ? soc2.core.rob.rob_bsy_1_0 : 1'b1 ) &&
										( (id == 6'b000010) ? soc2.core.rob.rob_bsy__1 : 1'b1 ) &&
										( (id == 6'b000011) ? soc2.core.rob.rob_bsy_1_1 : 1'b1 ) &&
										( (id == 6'b000100) ? soc2.core.rob.rob_bsy__2 : 1'b1 ) &&
										( (id == 6'b000101) ? soc2.core.rob.rob_bsy_1_2 : 1'b1 ) &&
										( (id == 6'b000110) ? soc2.core.rob.rob_bsy__3 : 1'b1 ) &&
										( (id == 6'b000111) ? soc2.core.rob.rob_bsy_1_3 : 1'b1 ) &&
										( (id == 6'b001000) ? soc2.core.rob.rob_bsy__4 : 1'b1 ) &&
										( (id == 6'b001001) ? soc2.core.rob.rob_bsy_1_4 : 1'b1 ) &&
										( (id == 6'b001010) ? soc2.core.rob.rob_bsy__5 : 1'b1 ) &&
										( (id == 6'b001011) ? soc2.core.rob.rob_bsy_1_5 : 1'b1 ) &&
										( (id == 6'b001100) ? soc2.core.rob.rob_bsy__6 : 1'b1 ) &&
										( (id == 6'b001101) ? soc2.core.rob.rob_bsy_1_6 : 1'b1 ) &&
										( (id == 6'b001110) ? soc2.core.rob.rob_bsy__7 : 1'b1 ) &&
										( (id == 6'b001111) ? soc2.core.rob.rob_bsy_1_7 : 1'b1 ) &&
										( (id == 6'b010000) ? soc2.core.rob.rob_bsy__8 : 1'b1 ) &&
										( (id == 6'b010001) ? soc2.core.rob.rob_bsy_1_8 : 1'b1 ) &&
										( (id == 6'b010010) ? soc2.core.rob.rob_bsy__9 : 1'b1 ) &&
										( (id == 6'b010011) ? soc2.core.rob.rob_bsy_1_9 : 1'b1 ) &&
										( (id == 6'b010100) ? soc2.core.rob.rob_bsy__10 : 1'b1 ) &&
										( (id == 6'b010101) ? soc2.core.rob.rob_bsy_1_10 : 1'b1 ) &&
										( (id == 6'b010110) ? soc2.core.rob.rob_bsy__11 : 1'b1 ) &&
										( (id == 6'b010111) ? soc2.core.rob.rob_bsy_1_11 : 1'b1 ) &&
										( (id == 6'b011000) ? soc2.core.rob.rob_bsy__12 : 1'b1 ) &&
										( (id == 6'b011001) ? soc2.core.rob.rob_bsy_1_12 : 1'b1 ) &&
										( (id == 6'b011010) ? soc2.core.rob.rob_bsy__13 : 1'b1 ) &&
										( (id == 6'b011011) ? soc2.core.rob.rob_bsy_1_13 : 1'b1 ) &&
										( (id == 6'b011100) ? soc2.core.rob.rob_bsy__14 : 1'b1 ) &&
										( (id == 6'b011101) ? soc2.core.rob.rob_bsy_1_14 : 1'b1 ) &&
										( (id == 6'b011110) ? soc2.core.rob.rob_bsy__15 : 1'b1 ) &&
										( (id == 6'b011111) ? soc2.core.rob.rob_bsy_1_15 : 1'b1 ) &&
										( (id == 6'b100000) ? soc2.core.rob.rob_bsy__16 : 1'b1 ) &&
										( (id == 6'b100001) ? soc2.core.rob.rob_bsy_1_16 : 1'b1 ) &&
										( (id == 6'b100010) ? soc2.core.rob.rob_bsy__17 : 1'b1 ) &&
										( (id == 6'b100011) ? soc2.core.rob.rob_bsy_1_17 : 1'b1 ) &&
										( (id == 6'b100100) ? soc2.core.rob.rob_bsy__18 : 1'b1 ) &&
										( (id == 6'b100101) ? soc2.core.rob.rob_bsy_1_18 : 1'b1 ) &&
										( (id == 6'b100110) ? soc2.core.rob.rob_bsy__19 : 1'b1 ) &&
										( (id == 6'b100111) ? soc2.core.rob.rob_bsy_1_19 : 1'b1 ) &&
										( (id == 6'b101000) ? soc2.core.rob.rob_bsy__20 : 1'b1 ) &&
										( (id == 6'b101001) ? soc2.core.rob.rob_bsy_1_20 : 1'b1 ) &&
										( (id == 6'b101010) ? soc2.core.rob.rob_bsy__21 : 1'b1 ) &&
										( (id == 6'b101011) ? soc2.core.rob.rob_bsy_1_21 : 1'b1 ) &&
										( (id == 6'b101100) ? soc2.core.rob.rob_bsy__22 : 1'b1 ) &&
										( (id == 6'b101101) ? soc2.core.rob.rob_bsy_1_22 : 1'b1 ) &&
										( (id == 6'b101110) ? soc2.core.rob.rob_bsy__23 : 1'b1 ) &&
										( (id == 6'b101111) ? soc2.core.rob.rob_bsy_1_23 : 1'b1 ) &&
										( (id == 6'b110000) ? soc2.core.rob.rob_bsy__24 : 1'b1 ) &&
										( (id == 6'b110001) ? soc2.core.rob.rob_bsy_1_24 : 1'b1 ) &&
										( (id == 6'b110010) ? soc2.core.rob.rob_bsy__25 : 1'b1 ) &&
										( (id == 6'b110011) ? soc2.core.rob.rob_bsy_1_25 : 1'b1 ) &&
										( (id == 6'b110100) ? soc2.core.rob.rob_bsy__26 : 1'b1 ) &&
										( (id == 6'b110101) ? soc2.core.rob.rob_bsy_1_26 : 1'b1 ) &&
										( (id == 6'b110110) ? soc2.core.rob.rob_bsy__27 : 1'b1 ) &&
										( (id == 6'b110111) ? soc2.core.rob.rob_bsy_1_27 : 1'b1 ) &&
										( (id == 6'b111000) ? soc2.core.rob.rob_bsy__28 : 1'b1 ) &&
										( (id == 6'b111001) ? soc2.core.rob.rob_bsy_1_28 : 1'b1 ) &&
										( (id == 6'b111010) ? soc2.core.rob.rob_bsy__29 : 1'b1 ) &&
										( (id == 6'b111011) ? soc2.core.rob.rob_bsy_1_29 : 1'b1 ) &&
										( (id == 6'b111100) ? soc2.core.rob.rob_bsy__30 : 1'b1 ) &&
										( (id == 6'b111101) ? soc2.core.rob.rob_bsy_1_30 : 1'b1 ) &&
										( (id == 6'b111110) ? soc2.core.rob.rob_bsy__31 : 1'b1 ) &&
										( (id == 6'b111111) ? soc2.core.rob.rob_bsy_1_31 : 1'b1 );
		end
	endfunction

  //Function that returns if the given ID in the ROB in SoC1 has its valid bit set
	function automatic isValid_1;
		input [5:0] id;
		begin
			isValid_1 = ( (id == 6'b000000) ? soc1.core.rob.rob_val__0 : 1'b1 ) &&
										( (id == 6'b000001) ? soc1.core.rob.rob_val_1_0 : 1'b1 ) &&
										( (id == 6'b000010) ? soc1.core.rob.rob_val__1 : 1'b1 ) &&
										( (id == 6'b000011) ? soc1.core.rob.rob_val_1_1 : 1'b1 ) &&
										( (id == 6'b000100) ? soc1.core.rob.rob_val__2 : 1'b1 ) &&
										( (id == 6'b000101) ? soc1.core.rob.rob_val_1_2 : 1'b1 ) &&
										( (id == 6'b000110) ? soc1.core.rob.rob_val__3 : 1'b1 ) &&
										( (id == 6'b000111) ? soc1.core.rob.rob_val_1_3 : 1'b1 ) &&
										( (id == 6'b001000) ? soc1.core.rob.rob_val__4 : 1'b1 ) &&
										( (id == 6'b001001) ? soc1.core.rob.rob_val_1_4 : 1'b1 ) &&
										( (id == 6'b001010) ? soc1.core.rob.rob_val__5 : 1'b1 ) &&
										( (id == 6'b001011) ? soc1.core.rob.rob_val_1_5 : 1'b1 ) &&
										( (id == 6'b001100) ? soc1.core.rob.rob_val__6 : 1'b1 ) &&
										( (id == 6'b001101) ? soc1.core.rob.rob_val_1_6 : 1'b1 ) &&
										( (id == 6'b001110) ? soc1.core.rob.rob_val__7 : 1'b1 ) &&
										( (id == 6'b001111) ? soc1.core.rob.rob_val_1_7 : 1'b1 ) &&
										( (id == 6'b010000) ? soc1.core.rob.rob_val__8 : 1'b1 ) &&
										( (id == 6'b010001) ? soc1.core.rob.rob_val_1_8 : 1'b1 ) &&
										( (id == 6'b010010) ? soc1.core.rob.rob_val__9 : 1'b1 ) &&
										( (id == 6'b010011) ? soc1.core.rob.rob_val_1_9 : 1'b1 ) &&
										( (id == 6'b010100) ? soc1.core.rob.rob_val__10 : 1'b1 ) &&
										( (id == 6'b010101) ? soc1.core.rob.rob_val_1_10 : 1'b1 ) &&
										( (id == 6'b010110) ? soc1.core.rob.rob_val__11 : 1'b1 ) &&
										( (id == 6'b010111) ? soc1.core.rob.rob_val_1_11 : 1'b1 ) &&
										( (id == 6'b011000) ? soc1.core.rob.rob_val__12 : 1'b1 ) &&
										( (id == 6'b011001) ? soc1.core.rob.rob_val_1_12 : 1'b1 ) &&
										( (id == 6'b011010) ? soc1.core.rob.rob_val__13 : 1'b1 ) &&
										( (id == 6'b011011) ? soc1.core.rob.rob_val_1_13 : 1'b1 ) &&
										( (id == 6'b011100) ? soc1.core.rob.rob_val__14 : 1'b1 ) &&
										( (id == 6'b011101) ? soc1.core.rob.rob_val_1_14 : 1'b1 ) &&
										( (id == 6'b011110) ? soc1.core.rob.rob_val__15 : 1'b1 ) &&
										( (id == 6'b011111) ? soc1.core.rob.rob_val_1_15 : 1'b1 ) &&
										( (id == 6'b100000) ? soc1.core.rob.rob_val__16 : 1'b1 ) &&
										( (id == 6'b100001) ? soc1.core.rob.rob_val_1_16 : 1'b1 ) &&
										( (id == 6'b100010) ? soc1.core.rob.rob_val__17 : 1'b1 ) &&
										( (id == 6'b100011) ? soc1.core.rob.rob_val_1_17 : 1'b1 ) &&
										( (id == 6'b100100) ? soc1.core.rob.rob_val__18 : 1'b1 ) &&
										( (id == 6'b100101) ? soc1.core.rob.rob_val_1_18 : 1'b1 ) &&
										( (id == 6'b100110) ? soc1.core.rob.rob_val__19 : 1'b1 ) &&
										( (id == 6'b100111) ? soc1.core.rob.rob_val_1_19 : 1'b1 ) &&
										( (id == 6'b101000) ? soc1.core.rob.rob_val__20 : 1'b1 ) &&
										( (id == 6'b101001) ? soc1.core.rob.rob_val_1_20 : 1'b1 ) &&
										( (id == 6'b101010) ? soc1.core.rob.rob_val__21 : 1'b1 ) &&
										( (id == 6'b101011) ? soc1.core.rob.rob_val_1_21 : 1'b1 ) &&
										( (id == 6'b101100) ? soc1.core.rob.rob_val__22 : 1'b1 ) &&
										( (id == 6'b101101) ? soc1.core.rob.rob_val_1_22 : 1'b1 ) &&
										( (id == 6'b101110) ? soc1.core.rob.rob_val__23 : 1'b1 ) &&
										( (id == 6'b101111) ? soc1.core.rob.rob_val_1_23 : 1'b1 ) &&
										( (id == 6'b110000) ? soc1.core.rob.rob_val__24 : 1'b1 ) &&
										( (id == 6'b110001) ? soc1.core.rob.rob_val_1_24 : 1'b1 ) &&
										( (id == 6'b110010) ? soc1.core.rob.rob_val__25 : 1'b1 ) &&
										( (id == 6'b110011) ? soc1.core.rob.rob_val_1_25 : 1'b1 ) &&
										( (id == 6'b110100) ? soc1.core.rob.rob_val__26 : 1'b1 ) &&
										( (id == 6'b110101) ? soc1.core.rob.rob_val_1_26 : 1'b1 ) &&
										( (id == 6'b110110) ? soc1.core.rob.rob_val__27 : 1'b1 ) &&
										( (id == 6'b110111) ? soc1.core.rob.rob_val_1_27 : 1'b1 ) &&
										( (id == 6'b111000) ? soc1.core.rob.rob_val__28 : 1'b1 ) &&
										( (id == 6'b111001) ? soc1.core.rob.rob_val_1_28 : 1'b1 ) &&
										( (id == 6'b111010) ? soc1.core.rob.rob_val__29 : 1'b1 ) &&
										( (id == 6'b111011) ? soc1.core.rob.rob_val_1_29 : 1'b1 ) &&
										( (id == 6'b111100) ? soc1.core.rob.rob_val__30 : 1'b1 ) &&
										( (id == 6'b111101) ? soc1.core.rob.rob_val_1_30 : 1'b1 ) &&
										( (id == 6'b111110) ? soc1.core.rob.rob_val__31 : 1'b1 ) &&
										( (id == 6'b111111) ? soc1.core.rob.rob_val_1_31 : 1'b1 );
		end
	endfunction

  //Function that returns if the given ID in the ROB in SoC2 has its busy bit set
	function automatic isValid_2;
		input [5:0] id;
		begin
			isValid_2 = ( (id == 6'b000000) ? soc2.core.rob.rob_val__0 : 1'b1 ) &&
										( (id == 6'b000001) ? soc2.core.rob.rob_val_1_0 : 1'b1 ) &&
										( (id == 6'b000010) ? soc2.core.rob.rob_val__1 : 1'b1 ) &&
										( (id == 6'b000011) ? soc2.core.rob.rob_val_1_1 : 1'b1 ) &&
										( (id == 6'b000100) ? soc2.core.rob.rob_val__2 : 1'b1 ) &&
										( (id == 6'b000101) ? soc2.core.rob.rob_val_1_2 : 1'b1 ) &&
										( (id == 6'b000110) ? soc2.core.rob.rob_val__3 : 1'b1 ) &&
										( (id == 6'b000111) ? soc2.core.rob.rob_val_1_3 : 1'b1 ) &&
										( (id == 6'b001000) ? soc2.core.rob.rob_val__4 : 1'b1 ) &&
										( (id == 6'b001001) ? soc2.core.rob.rob_val_1_4 : 1'b1 ) &&
										( (id == 6'b001010) ? soc2.core.rob.rob_val__5 : 1'b1 ) &&
										( (id == 6'b001011) ? soc2.core.rob.rob_val_1_5 : 1'b1 ) &&
										( (id == 6'b001100) ? soc2.core.rob.rob_val__6 : 1'b1 ) &&
										( (id == 6'b001101) ? soc2.core.rob.rob_val_1_6 : 1'b1 ) &&
										( (id == 6'b001110) ? soc2.core.rob.rob_val__7 : 1'b1 ) &&
										( (id == 6'b001111) ? soc2.core.rob.rob_val_1_7 : 1'b1 ) &&
										( (id == 6'b010000) ? soc2.core.rob.rob_val__8 : 1'b1 ) &&
										( (id == 6'b010001) ? soc2.core.rob.rob_val_1_8 : 1'b1 ) &&
										( (id == 6'b010010) ? soc2.core.rob.rob_val__9 : 1'b1 ) &&
										( (id == 6'b010011) ? soc2.core.rob.rob_val_1_9 : 1'b1 ) &&
										( (id == 6'b010100) ? soc2.core.rob.rob_val__10 : 1'b1 ) &&
										( (id == 6'b010101) ? soc2.core.rob.rob_val_1_10 : 1'b1 ) &&
										( (id == 6'b010110) ? soc2.core.rob.rob_val__11 : 1'b1 ) &&
										( (id == 6'b010111) ? soc2.core.rob.rob_val_1_11 : 1'b1 ) &&
										( (id == 6'b011000) ? soc2.core.rob.rob_val__12 : 1'b1 ) &&
										( (id == 6'b011001) ? soc2.core.rob.rob_val_1_12 : 1'b1 ) &&
										( (id == 6'b011010) ? soc2.core.rob.rob_val__13 : 1'b1 ) &&
										( (id == 6'b011011) ? soc2.core.rob.rob_val_1_13 : 1'b1 ) &&
										( (id == 6'b011100) ? soc2.core.rob.rob_val__14 : 1'b1 ) &&
										( (id == 6'b011101) ? soc2.core.rob.rob_val_1_14 : 1'b1 ) &&
										( (id == 6'b011110) ? soc2.core.rob.rob_val__15 : 1'b1 ) &&
										( (id == 6'b011111) ? soc2.core.rob.rob_val_1_15 : 1'b1 ) &&
										( (id == 6'b100000) ? soc2.core.rob.rob_val__16 : 1'b1 ) &&
										( (id == 6'b100001) ? soc2.core.rob.rob_val_1_16 : 1'b1 ) &&
										( (id == 6'b100010) ? soc2.core.rob.rob_val__17 : 1'b1 ) &&
										( (id == 6'b100011) ? soc2.core.rob.rob_val_1_17 : 1'b1 ) &&
										( (id == 6'b100100) ? soc2.core.rob.rob_val__18 : 1'b1 ) &&
										( (id == 6'b100101) ? soc2.core.rob.rob_val_1_18 : 1'b1 ) &&
										( (id == 6'b100110) ? soc2.core.rob.rob_val__19 : 1'b1 ) &&
										( (id == 6'b100111) ? soc2.core.rob.rob_val_1_19 : 1'b1 ) &&
										( (id == 6'b101000) ? soc2.core.rob.rob_val__20 : 1'b1 ) &&
										( (id == 6'b101001) ? soc2.core.rob.rob_val_1_20 : 1'b1 ) &&
										( (id == 6'b101010) ? soc2.core.rob.rob_val__21 : 1'b1 ) &&
										( (id == 6'b101011) ? soc2.core.rob.rob_val_1_21 : 1'b1 ) &&
										( (id == 6'b101100) ? soc2.core.rob.rob_val__22 : 1'b1 ) &&
										( (id == 6'b101101) ? soc2.core.rob.rob_val_1_22 : 1'b1 ) &&
										( (id == 6'b101110) ? soc2.core.rob.rob_val__23 : 1'b1 ) &&
										( (id == 6'b101111) ? soc2.core.rob.rob_val_1_23 : 1'b1 ) &&
										( (id == 6'b110000) ? soc2.core.rob.rob_val__24 : 1'b1 ) &&
										( (id == 6'b110001) ? soc2.core.rob.rob_val_1_24 : 1'b1 ) &&
										( (id == 6'b110010) ? soc2.core.rob.rob_val__25 : 1'b1 ) &&
										( (id == 6'b110011) ? soc2.core.rob.rob_val_1_25 : 1'b1 ) &&
										( (id == 6'b110100) ? soc2.core.rob.rob_val__26 : 1'b1 ) &&
										( (id == 6'b110101) ? soc2.core.rob.rob_val_1_26 : 1'b1 ) &&
										( (id == 6'b110110) ? soc2.core.rob.rob_val__27 : 1'b1 ) &&
										( (id == 6'b110111) ? soc2.core.rob.rob_val_1_27 : 1'b1 ) &&
										( (id == 6'b111000) ? soc2.core.rob.rob_val__28 : 1'b1 ) &&
										( (id == 6'b111001) ? soc2.core.rob.rob_val_1_28 : 1'b1 ) &&
										( (id == 6'b111010) ? soc2.core.rob.rob_val__29 : 1'b1 ) &&
										( (id == 6'b111011) ? soc2.core.rob.rob_val_1_29 : 1'b1 ) &&
										( (id == 6'b111100) ? soc2.core.rob.rob_val__30 : 1'b1 ) &&
										( (id == 6'b111101) ? soc2.core.rob.rob_val_1_30 : 1'b1 ) &&
										( (id == 6'b111110) ? soc2.core.rob.rob_val__31 : 1'b1 ) &&
										( (id == 6'b111111) ? soc2.core.rob.rob_val_1_31 : 1'b1 );
		end
	endfunction

  //Function that returns if the given row is in the committable set
  //to be committable, the ID of the row must be above head and below or equal to root_id
	function automatic isRobRowCommitable;
		input [4:0] head_id;
		input [5:0] root_id;
		input [4:0] row;
		begin
      //since the ROB is a ringbuffer, we need to distinguish different cases for the position of head and root_id
			if (head_id < root_id[5:1])
			begin
				isRobRowCommitable =  row >= head_id && row < root_id[5:1];
			end
			else if (head_id > root_id[5:1])
			begin
				isRobRowCommitable = row >= head_id || row < root_id[5:1];
			end
			else // head_id == root_id
			begin
				isRobRowCommitable = ( row == head_id ); // there is no commitable, except for head_id
			end
		end
	endfunction

  //Function that returns if the given ID is in the committable set
  //to be committable, the ID must be above head and below or equal to root_id
	function automatic isRobIdCommitable;
		input [4:0] head_id;
		input [5:0] root_id;
		input [5:0] id;
		begin
      //since the ROB is a ringbuffer, we need to distinguish different cases for the position of head and root_id
			if (head_id < root_id[5:1])
			begin
				isRobIdCommitable =  id[5:1] >= head_id && id < root_id;
			end
			else if (head_id > root_id[5:1])
			begin
				isRobIdCommitable = id[5:1] >= head_id || id < root_id;
			end
			else // head_id == root_id
			begin
				isRobIdCommitable = ( id[5:1] == head_id ); // there is no commitable, except for head_id
			end

		end
	endfunction

  //function that returns true if the given spawn_tag is greater than T_main
	function automatic isSpawnTagGreater;
    //4-bit branch tag(spawn_tag), which is the integer value of the level of speculation
		input [3:0] spawn_tag;
		input [11:0] main_tag;
		reg [15:0] temp;
		reg [11:0] temp2;
		begin
      //constructs a 12-bit branch mask by shifting a 1 by the value of the branch tag
			temp = (16'h1 << spawn_tag);
			temp2 = temp[11:0];
      //check if the intersection of the branch mask and the main_tag (T_main) is 0
      //then the spawn_tag is greater than T_main
			isSpawnTagGreater = (temp2 & main_tag) == 12'h0;
		end
	endfunction

//*******************************************//

	wire [5:0] root_id;
	assign root_id = 6'b010000; // should be symbolic

	wire [11:0] root_br_mask; // should be symbolic // let's assume it is onehot
	assign root_br_mask = 12'h080;

  //needed signals for misprediction of instruction at root_id
  //see template for more information
	reg mispred_flag_1;
	reg mispred_happened_1;
	reg mispred_flag_2;
	reg mispred_happened_2;

  //combinational logic for setting the flags
	always @(posedge clock)
	begin
		if (reset)
		begin
			mispred_flag_1 <= 1'b0;
			mispred_happened_1 <= 1'b0;
			mispred_flag_2 <= 1'b0;
			mispred_happened_2 <= 1'b0;
		end
		else
		begin
      //if masks match set the flags
			if ( (soc1.core.rob.io_brupdate_b1_mispredict_mask & root_br_mask) != 12'h0 && 	mispred_happened_1 == 1'b0 )
			begin
				mispred_flag_1 <= 1'b1;
				mispred_happened_1 <= 1'b1;
			end
			else
			begin
        //unset this flag after one clock cycle
				mispred_flag_1 <= 1'b0;
			end

      //if masks match set the flags
			if ( (soc2.core.rob.io_brupdate_b1_mispredict_mask & root_br_mask) != 12'h0 && 	mispred_happened_2 == 1'b0 )
			begin
				mispred_flag_2 <= 1'b1;
				mispred_happened_2 <= 1'b1;
			end
			else
			begin
        //unset this flag after one clock cycle
				mispred_flag_2 <= 1'b0;
			end

		end
	end

//****************************************************//
//************ME-1(Main Branch Pending)***************//

  //i) ROB slot with root_ID contains an SPI Instruction
	wire ME_1_1;
  //call to isSpi function
	assign ME_1_1 = isSpi(root_id);

  //ii) SPI is mispredicted
	wire ME_1_2;
  //SPI is mispredicted if it is never correct predicted
	assign ME_1_2 = ( (mispred_happened_1 == 1'b0) ? ( (soc1.core.rob.io_brupdate_b1_resolve_mask & root_br_mask) == 12'h0 ) : 1'b1 ) &&
									 ( (mispred_happened_2 == 1'b0) ? ( (soc2.core.rob.io_brupdate_b1_resolve_mask & root_br_mask) == 12'h0 ) : 1'b1 ) ;

  //iii) SPI remains valid(pending) until misprediction is signaled by the prediction unit
	wire ME_1_3;
  // check busy and valid bit
  assign ME_1_3 = ( (mispred_happened_1 == 1'b0) ? isPending_1(root_id) && isValid_1(root_id) : 1'b1 ) && ( (mispred_happened_2 == 1'b0) ? isPending_2(root_id) && isValid_2(root_id) : 1'b1 );

	wire ME_1;
	assign ME_1 = ME_1_1 && ME_1_2 && ME_1_3;


//****************************************************//
//************ME-2(Uncommittable Slots Invalidated)***//

	wire ME_2_1;
  //after misprediction of SPI, in the next clock cycle every ROB slot in the uncommittable set is invalidated (SoC1)
	assign ME_2_1 = (mispred_flag_1) ? ( ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000000 ) || soc1.core.rob.rob_val__0 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000001 ) || soc1.core.rob.rob_val_1_0 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000010 ) || soc1.core.rob.rob_val__1 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000011 ) || soc1.core.rob.rob_val_1_1 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000100 ) || soc1.core.rob.rob_val__2 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000101 ) || soc1.core.rob.rob_val_1_2 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000110 ) || soc1.core.rob.rob_val__3 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000111 ) || soc1.core.rob.rob_val_1_3 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001000 ) || soc1.core.rob.rob_val__4 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001001 ) || soc1.core.rob.rob_val_1_4 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001010 ) || soc1.core.rob.rob_val__5 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001011 ) || soc1.core.rob.rob_val_1_5 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001100 ) || soc1.core.rob.rob_val__6 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001101 ) || soc1.core.rob.rob_val_1_6 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001110 ) || soc1.core.rob.rob_val__7 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001111 ) || soc1.core.rob.rob_val_1_7 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010000 ) || soc1.core.rob.rob_val__8 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010001 ) || soc1.core.rob.rob_val_1_8 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010010 ) || soc1.core.rob.rob_val__9 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010011 ) || soc1.core.rob.rob_val_1_9 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010100 ) || soc1.core.rob.rob_val__10 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010101 ) || soc1.core.rob.rob_val_1_10 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010110 ) || soc1.core.rob.rob_val__11 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010111 ) || soc1.core.rob.rob_val_1_11 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011000 ) || soc1.core.rob.rob_val__12 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011001 ) || soc1.core.rob.rob_val_1_12 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011010 ) || soc1.core.rob.rob_val__13 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011011 ) || soc1.core.rob.rob_val_1_13 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011100 ) || soc1.core.rob.rob_val__14 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011101 ) || soc1.core.rob.rob_val_1_14 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011110 ) || soc1.core.rob.rob_val__15 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011111 ) || soc1.core.rob.rob_val_1_15 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100000 ) || soc1.core.rob.rob_val__16 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100001 ) || soc1.core.rob.rob_val_1_16 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100010 ) || soc1.core.rob.rob_val__17 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100011 ) || soc1.core.rob.rob_val_1_17 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100100 ) || soc1.core.rob.rob_val__18 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100101 ) || soc1.core.rob.rob_val_1_18 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100110 ) || soc1.core.rob.rob_val__19 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100111 ) || soc1.core.rob.rob_val_1_19 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101000 ) || soc1.core.rob.rob_val__20 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101001 ) || soc1.core.rob.rob_val_1_20 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101010 ) || soc1.core.rob.rob_val__21 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101011 ) || soc1.core.rob.rob_val_1_21 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101100 ) || soc1.core.rob.rob_val__22 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101101 ) || soc1.core.rob.rob_val_1_22 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101110 ) || soc1.core.rob.rob_val__23 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101111 ) || soc1.core.rob.rob_val_1_23 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110000 ) || soc1.core.rob.rob_val__24 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110001 ) || soc1.core.rob.rob_val_1_24 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110010 ) || soc1.core.rob.rob_val__25 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110011 ) || soc1.core.rob.rob_val_1_25 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110100 ) || soc1.core.rob.rob_val__26 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110101 ) || soc1.core.rob.rob_val_1_26 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110110 ) || soc1.core.rob.rob_val__27 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110111 ) || soc1.core.rob.rob_val_1_27 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111000 ) || soc1.core.rob.rob_val__28 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111001 ) || soc1.core.rob.rob_val_1_28 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111010 ) || soc1.core.rob.rob_val__29 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111011 ) || soc1.core.rob.rob_val_1_29 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111100 ) || soc1.core.rob.rob_val__30 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111101 ) || soc1.core.rob.rob_val_1_30 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111110 ) || soc1.core.rob.rob_val__31 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111111 ) || soc1.core.rob.rob_val_1_31 == 1'b0 )
																			) : 1'b1;

	wire ME_2_2;
  //after misprediction of SPI, in the next clock cycle every ROB slot in the uncommittable set is invalidated (SoC2)
	assign ME_2_2 = (mispred_flag_2) ? ( ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000000 ) || soc2.core.rob.rob_val__0 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000001 ) || soc2.core.rob.rob_val_1_0 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000010 ) || soc2.core.rob.rob_val__1 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000011 ) || soc2.core.rob.rob_val_1_1 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000100 ) || soc2.core.rob.rob_val__2 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000101 ) || soc2.core.rob.rob_val_1_2 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000110 ) || soc2.core.rob.rob_val__3 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000111 ) || soc2.core.rob.rob_val_1_3 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001000 ) || soc2.core.rob.rob_val__4 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001001 ) || soc2.core.rob.rob_val_1_4 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001010 ) || soc2.core.rob.rob_val__5 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001011 ) || soc2.core.rob.rob_val_1_5 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001100 ) || soc2.core.rob.rob_val__6 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001101 ) || soc2.core.rob.rob_val_1_6 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001110 ) || soc2.core.rob.rob_val__7 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001111 ) || soc2.core.rob.rob_val_1_7 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010000 ) || soc2.core.rob.rob_val__8 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010001 ) || soc2.core.rob.rob_val_1_8 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010010 ) || soc2.core.rob.rob_val__9 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010011 ) || soc2.core.rob.rob_val_1_9 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010100 ) || soc2.core.rob.rob_val__10 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010101 ) || soc2.core.rob.rob_val_1_10 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010110 ) || soc2.core.rob.rob_val__11 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010111 ) || soc2.core.rob.rob_val_1_11 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011000 ) || soc2.core.rob.rob_val__12 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011001 ) || soc2.core.rob.rob_val_1_12 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011010 ) || soc2.core.rob.rob_val__13 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011011 ) || soc2.core.rob.rob_val_1_13 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011100 ) || soc2.core.rob.rob_val__14 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011101 ) || soc2.core.rob.rob_val_1_14 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011110 ) || soc2.core.rob.rob_val__15 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011111 ) || soc2.core.rob.rob_val_1_15 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100000 ) || soc2.core.rob.rob_val__16 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100001 ) || soc2.core.rob.rob_val_1_16 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100010 ) || soc2.core.rob.rob_val__17 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100011 ) || soc2.core.rob.rob_val_1_17 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100100 ) || soc2.core.rob.rob_val__18 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100101 ) || soc2.core.rob.rob_val_1_18 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100110 ) || soc2.core.rob.rob_val__19 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100111 ) || soc2.core.rob.rob_val_1_19 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101000 ) || soc2.core.rob.rob_val__20 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101001 ) || soc2.core.rob.rob_val_1_20 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101010 ) || soc2.core.rob.rob_val__21 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101011 ) || soc2.core.rob.rob_val_1_21 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101100 ) || soc2.core.rob.rob_val__22 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101101 ) || soc2.core.rob.rob_val_1_22 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101110 ) || soc2.core.rob.rob_val__23 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101111 ) || soc2.core.rob.rob_val_1_23 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110000 ) || soc2.core.rob.rob_val__24 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110001 ) || soc2.core.rob.rob_val_1_24 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110010 ) || soc2.core.rob.rob_val__25 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110011 ) || soc2.core.rob.rob_val_1_25 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110100 ) || soc2.core.rob.rob_val__26 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110101 ) || soc2.core.rob.rob_val_1_26 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110110 ) || soc2.core.rob.rob_val__27 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110111 ) || soc2.core.rob.rob_val_1_27 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111000 ) || soc2.core.rob.rob_val__28 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111001 ) || soc2.core.rob.rob_val_1_28 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111010 ) || soc2.core.rob.rob_val__29 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111011 ) || soc2.core.rob.rob_val_1_29 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111100 ) || soc2.core.rob.rob_val__30 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111101 ) || soc2.core.rob.rob_val_1_30 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111110 ) || soc2.core.rob.rob_val__31 == 1'b0 ) &&
																			 ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111111 ) || soc2.core.rob.rob_val_1_31 == 1'b0 )
																			) : 1'b1;

	wire ME_2;
	assign ME_2 = ME_2_1 && ME_2_2;

//****************************************************//
//************ME-3(ROB tail Consistency)**************//

	wire ME_3;
  //until misprediction, ROB tail points to an uncommittable ROB slot
	assign ME_3 = ( (mispred_happened_1 == 1'b0) ? ( isRobRowCommitable(soc1.core.rob.rob_head, root_id, soc1.core.rob.rob_tail) == 1'b0 ) : 1'b1 ) &&
									( (mispred_happened_2 == 1'b0) ? ( isRobRowCommitable(soc2.core.rob.rob_head, root_id, soc2.core.rob.rob_tail) == 1'b0 ) : 1'b1 );

//****************************************************//
//************ME-4(FU Consistency))*******************//
//Should we check for request valid bit?
//check for ever FU:
//if ROB_IDs of the instructions currently being executed are equal, and commitable,
//the operands must be equal

	wire ME_4_alu;
	assign ME_4_alu = ( soc1.core.csr_exe_unit.alu.io_req_bits_uop_rob_idx == soc2.core.csr_exe_unit.alu.io_req_bits_uop_rob_idx &&
										(  soc1.core.csr_exe_unit.alu.io_req_bits_rs1_data != soc2.core.csr_exe_unit.alu.io_req_bits_rs1_data ||
												soc1.core.csr_exe_unit.alu.io_req_bits_rs2_data != soc2.core.csr_exe_unit.alu.io_req_bits_rs2_data ) ) ?
												 isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.csr_exe_unit.alu.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;

	wire ME_4_div;
	assign ME_4_div =  ( soc1.core.csr_exe_unit.div.io_req_bits_uop_rob_idx == soc2.core.csr_exe_unit.div.io_req_bits_uop_rob_idx &&
										 ( soc1.core.csr_exe_unit.div.io_req_bits_rs1_data != soc2.core.csr_exe_unit.div.io_req_bits_rs1_data ||
										  soc1.core.csr_exe_unit.div.io_req_bits_rs2_data != soc2.core.csr_exe_unit.div.io_req_bits_rs2_data ) ) ?
											 isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.csr_exe_unit.div.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


  wire ME_4_fpiu;
  assign ME_4_fpiu =  ( soc1.core.fp_pipeline.fpiu_unit.io_req_bits_uop_rob_idx == soc2.core.fp_pipeline.fpiu_unit.io_req_bits_uop_rob_idx &&
 ( soc1.core.fp_pipeline.fpiu_unit.io_req_bits_rs1_data != soc2.core.fp_pipeline.fpiu_unit.io_req_bits_rs1_data ||
   soc1.core.fp_pipeline.fpiu_unit.io_req_bits_rs1_data != soc2.core.fp_pipeline.fpiu_unit.io_req_bits_rs2_data ||
   soc1.core.fp_pipeline.fpiu_unit.io_req_bits_rs3_data != soc2.core.fp_pipeline.fpiu_unit.io_req_bits_rs3_data ) ) ?
	 isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


  wire ME_4_jmpalu;
  assign ME_4_jmpalu =  ( soc1.core.jmp_unit.alu.io_req_bits_uop_rob_idx == soc2.core.jmp_unit.alu.io_req_bits_uop_rob_idx &&
 ( soc1.core.jmp_unit.alu.io_req_bits_rs1_data != soc2.core.jmp_unit.alu.io_req_bits_rs1_data ||
   soc1.core.jmp_unit.alu.io_req_bits_rs2_data != soc2.core.jmp_unit.alu.io_req_bits_rs2_data ) ) ?
   isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.alu.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


  wire ME_4_ifpu;
  assign ME_4_ifpu =  ( soc1.core.jmp_unit.ifpu.io_req_bits_uop_rob_idx == soc2.core.jmp_unit.ifpu.io_req_bits_uop_rob_idx &&
 ( soc1.core.jmp_unit.ifpu.io_req_bits_rs1_data != soc2.core.jmp_unit.ifpu.io_req_bits_rs1_data ) ) ?
   isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.ifpu.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


  wire ME_4_imul;
  assign ME_4_imul =  ( soc1.core.jmp_unit.imul.io_req_bits_uop_rob_idx == soc2.core.jmp_unit.imul.io_req_bits_uop_rob_idx &&
 ( soc1.core.jmp_unit.imul.io_req_bits_rs1_data != soc2.core.jmp_unit.imul.io_req_bits_rs1_data ||
   soc1.core.jmp_unit.imul.io_req_bits_rs2_data != soc2.core.jmp_unit.imul.io_req_bits_rs2_data ) ) ?
   isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.imul.io_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


	wire ME_4_lsu;
	assign ME_4_lsu = ( soc1.lsu.io_core_exe_0_req_bits_uop_rob_idx == soc2.lsu.io_core_exe_0_req_bits_uop_rob_idx &&
										( soc1.lsu.io_core_exe_0_req_bits_addr != soc2.lsu.io_core_exe_0_req_bits_addr ||
											soc1.lsu.io_core_exe_0_req_bits_data != soc2.lsu.io_core_exe_0_req_bits_data ) ) ?
											isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.io_core_exe_0_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


	wire ME_4_lsufence;
	assign ME_4_lsufence = ( soc1.lsu.io_core_exe_0_req_bits_uop_rob_idx == soc2.lsu.io_core_exe_0_req_bits_uop_rob_idx &&
										( soc1.lsu.io_core_exe_0_req_bits_sfence_bits_addr != soc2.lsu.io_core_exe_0_req_bits_sfence_bits_addr ||
											soc1.lsu.io_core_exe_0_req_bits_sfence_bits_rs1 != soc2.lsu.io_core_exe_0_req_bits_sfence_bits_rs1 ||
											soc1.lsu.io_core_exe_0_req_bits_sfence_bits_rs2 != soc2.lsu.io_core_exe_0_req_bits_sfence_bits_rs2 ) ) ?
											isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.io_core_exe_0_req_bits_uop_rob_idx) == 1'b0 : 1'b1;


	wire ME_4_lsufp;
	assign ME_4_lsufp = ( soc1.lsu.io_core_fp_stdata_bits_uop_rob_idx == soc2.lsu.io_core_fp_stdata_bits_uop_rob_idx &&
											( soc1.lsu.io_core_fp_stdata_bits_data != soc2.lsu.io_core_fp_stdata_bits_data) ) ?
											isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.io_core_fp_stdata_bits_uop_rob_idx) == 1'b0 : 1'b1;


	wire ME_4;
	assign ME_4 = ME_4_alu && ME_4_div && ME_4_fpiu && ME_4_jmpalu && ME_4_ifpu && ME_4_imul && ME_4_lsu && ME_4_lsufence && ME_4_lsufp;

//*******************************************//
//************ME-5 & ME-6********************//
//write one combinational process for both ME-5 and ME-6
//for every ROB slot or bookkeeping buffer:
//check if stored ROB ID is committable
//store branch mask in corresponding variable
//set the other variable to default value (12'hfff for uncommitable tags, 12'h0 for committable tags)

//Soc1

  wire [11:0] alu_T_2_com_1;
  wire [11:0] alu_T_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.csr_exe_unit.alu._T_2_0_rob_idx))
    begin
      alu_T_2_com_1 = soc1.core.csr_exe_unit.alu._T_2_0_br_mask;
      alu_T_2_uncom_1 = 12'hfff;
    end
    else
    begin
      alu_T_2_com_1 = 12'h0;
      alu_T_2_uncom_1 = soc1.core.csr_exe_unit.alu._T_2_0_br_mask;
    end
  end

  wire [11:0] div_r_com_1;
  wire [11:0] div_r_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.csr_exe_unit.div.r_uop_rob_idx))
    begin
      div_r_com_1 = soc1.core.csr_exe_unit.div.r_uop_br_mask;
      div_r_uncom_1 = 12'hfff;
    end
    else
    begin
      div_r_com_1 = 12'h0;
      div_r_uncom_1 = soc1.core.csr_exe_unit.div.r_uop_br_mask;
    end
  end

  wire [11:0] exe_reg_0_com_1;
  wire [11:0] exe_reg_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.exe_reg_uops_0_rob_idx))
    begin
      exe_reg_0_com_1 = soc1.core.iregister_read.exe_reg_uops_0_br_mask;
      exe_reg_0_uncom_1 = 12'hfff;
    end
    else
    begin
      exe_reg_0_com_1 = 12'h0;
      exe_reg_0_uncom_1 = soc1.core.iregister_read.exe_reg_uops_0_br_mask;
    end
  end

  wire [11:0] exe_reg_1_com_1;
  wire [11:0] exe_reg_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.exe_reg_uops_1_rob_idx))
    begin
      exe_reg_1_com_1 = soc1.core.iregister_read.exe_reg_uops_1_br_mask;
      exe_reg_1_uncom_1 = 12'hfff;
    end
    else
    begin
      exe_reg_1_com_1 = 12'h0;
      exe_reg_1_uncom_1 = soc1.core.iregister_read.exe_reg_uops_1_br_mask;
    end
  end

  wire [11:0] exe_reg_2_com_1;
  wire [11:0] exe_reg_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.exe_reg_uops_2_rob_idx))
    begin
      exe_reg_2_com_1 = soc1.core.iregister_read.exe_reg_uops_2_br_mask;
      exe_reg_2_uncom_1 = 12'hfff;
    end
    else
    begin
      exe_reg_2_com_1 = 12'h0;
      exe_reg_2_uncom_1 = soc1.core.iregister_read.exe_reg_uops_2_br_mask;
    end
  end

  wire [11:0] rrd_0_com_1;
  wire [11:0] rrd_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.rrd_uops_0_rob_idx))
    begin
      rrd_0_com_1 = soc1.core.iregister_read.rrd_uops_0_br_mask;
      rrd_0_uncom_1 = 12'hfff;
    end
    else
    begin
      rrd_0_com_1 = 12'h0;
      rrd_0_uncom_1 = soc1.core.iregister_read.rrd_uops_0_br_mask;
    end
  end

  wire [11:0] rrd_1_com_1;
  wire [11:0] rrd_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.rrd_uops_1_rob_idx))
    begin
      rrd_1_com_1 = soc1.core.iregister_read.rrd_uops_1_br_mask;
      rrd_1_uncom_1 = 12'hfff;
    end
    else
    begin
      rrd_1_com_1 = 12'h0;
      rrd_1_uncom_1 = soc1.core.iregister_read.rrd_uops_1_br_mask;
    end
  end

  wire [11:0] rrd_2_com_1;
  wire [11:0] rrd_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.iregister_read.rrd_uops_2_rob_idx))
    begin
      rrd_2_com_1 = soc1.core.iregister_read.rrd_uops_2_br_mask;
      rrd_2_uncom_1 = 12'hfff;
    end
    else
    begin
      rrd_2_com_1 = 12'h0;
      rrd_2_uncom_1 = soc1.core.iregister_read.rrd_uops_2_br_mask;
    end
  end

  wire [11:0] bkq_0_com_1;
  wire [11:0] bkq_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.BranchKillableQueue.uops_0_rob_idx))
    begin
      bkq_0_com_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_0_br_mask;
      bkq_0_uncom_1 = 12'hfff;
    end
    else
    begin
      bkq_0_com_1 = 12'h0;
      bkq_0_uncom_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_0_br_mask;
    end
  end

  wire [11:0] bkq_1_com_1;
  wire [11:0] bkq_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.BranchKillableQueue.uops_1_rob_idx))
    begin
      bkq_1_com_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_1_br_mask;
      bkq_1_uncom_1 = 12'hfff;
    end
    else
    begin
      bkq_1_com_1 = 12'h0;
      bkq_1_uncom_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_1_br_mask;
    end
  end

  wire [11:0] bkq_2_com_1;
  wire [11:0] bkq_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.BranchKillableQueue.uops_2_rob_idx))
    begin
      bkq_2_com_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_2_br_mask;
      bkq_2_uncom_1 = 12'hfff;
    end
    else
    begin
      bkq_2_com_1 = 12'h0;
      bkq_2_uncom_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_2_br_mask;
    end
  end

  wire [11:0] bkq_3_com_1;
  wire [11:0] bkq_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.BranchKillableQueue.uops_3_rob_idx))
    begin
      bkq_3_com_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_3_br_mask;
      bkq_3_uncom_1 = 12'hfff;
    end
    else
    begin
      bkq_3_com_1 = 12'h0;
      bkq_3_uncom_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_3_br_mask;
    end
  end

  wire [11:0] bkq_4_com_1;
  wire [11:0] bkq_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.BranchKillableQueue.uops_4_rob_idx))
    begin
      bkq_4_com_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_4_br_mask;
      bkq_4_uncom_1 = 12'hfff;
    end
    else
    begin
      bkq_4_com_1 = 12'h0;
      bkq_4_uncom_1 = soc1.core.jmp_unit.BranchKillableQueue.uops_4_br_mask;
    end
  end

  wire [11:0] alu_T_2_0_com_1;
  wire [11:0] alu_T_2_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.alu._T_2_0_rob_idx))
    begin
      alu_T_2_0_com_1 = soc1.core.jmp_unit.alu._T_2_0_br_mask;
      alu_T_2_0_uncom_1 = 12'hfff;
    end
    else
    begin
      alu_T_2_0_com_1 = 12'h0;
      alu_T_2_0_uncom_1 = soc1.core.jmp_unit.alu._T_2_0_br_mask;
    end
  end

  wire [11:0] alu_T_2_1_com_1;
  wire [11:0] alu_T_2_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.alu._T_2_1_rob_idx))
    begin
      alu_T_2_1_com_1 = soc1.core.jmp_unit.alu._T_2_1_br_mask;
      alu_T_2_1_uncom_1 = 12'hfff;
    end
    else
    begin
      alu_T_2_1_com_1 = 12'h0;
      alu_T_2_1_uncom_1 = soc1.core.jmp_unit.alu._T_2_1_br_mask;
    end
  end

  wire [11:0] alu_T_2_2_com_1;
  wire [11:0] alu_T_2_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.alu._T_2_2_rob_idx))
    begin
      alu_T_2_2_com_1 = soc1.core.jmp_unit.alu._T_2_2_br_mask;
      alu_T_2_2_uncom_1 = 12'hfff;
    end
    else
    begin
      alu_T_2_2_com_1 = 12'h0;
      alu_T_2_2_uncom_1 = soc1.core.jmp_unit.alu._T_2_2_br_mask;
    end
  end

  wire [11:0] ifpu_T_2_0_com_1;
  wire [11:0] ifpu_T_2_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.ifpu._T_2_0_rob_idx))
    begin
      ifpu_T_2_0_com_1 = soc1.core.jmp_unit.ifpu._T_2_0_br_mask;
      ifpu_T_2_0_uncom_1 = 12'hfff;
    end
    else
    begin
      ifpu_T_2_0_com_1 = 12'h0;
      ifpu_T_2_0_uncom_1 = soc1.core.jmp_unit.ifpu._T_2_0_br_mask;
    end
  end

  wire [11:0] ifpu_T_2_1_com_1;
  wire [11:0] ifpu_T_2_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.ifpu._T_2_1_rob_idx))
    begin
      ifpu_T_2_1_com_1 = soc1.core.jmp_unit.ifpu._T_2_1_br_mask;
      ifpu_T_2_1_uncom_1 = 12'hfff;
    end
    else
    begin
      ifpu_T_2_1_com_1 = 12'h0;
      ifpu_T_2_1_uncom_1 = soc1.core.jmp_unit.ifpu._T_2_1_br_mask;
    end
  end



  wire [11:0] imul_T_2_0_com_1;
  wire [11:0] imul_T_2_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.imul._T_2_0_rob_idx))
    begin
      imul_T_2_0_com_1 = soc1.core.jmp_unit.imul._T_2_0_br_mask;
      imul_T_2_0_uncom_1 = 12'hfff;
    end
    else
    begin
      imul_T_2_0_com_1 = 12'h0;
      imul_T_2_0_uncom_1 = soc1.core.jmp_unit.imul._T_2_0_br_mask;
    end
  end

  wire [11:0] imul_T_2_1_com_1;
  wire [11:0] imul_T_2_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.imul._T_2_1_rob_idx))
    begin
      imul_T_2_1_com_1 = soc1.core.jmp_unit.imul._T_2_1_br_mask;
      imul_T_2_1_uncom_1 = 12'hfff;
    end
    else
    begin
      imul_T_2_1_com_1 = 12'h0;
      imul_T_2_1_uncom_1 = soc1.core.jmp_unit.imul._T_2_1_br_mask;
    end
  end

  wire [11:0] imul_T_2_2_com_1;
  wire [11:0] imul_T_2_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.jmp_unit.imul._T_2_2_rob_idx))
    begin
      imul_T_2_2_com_1 = soc1.core.jmp_unit.imul._T_2_2_br_mask;
      imul_T_2_2_uncom_1 = 12'hfff;
    end
    else
    begin
      imul_T_2_2_com_1 = 12'h0;
      imul_T_2_2_uncom_1 = soc1.core.jmp_unit.imul._T_2_2_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_0_com_1;
  wire [11:0] fp_issue_slot_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      fp_issue_slot_0_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_br_mask;
      fp_issue_slot_0_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_0_com_1 = 12'h0;
      fp_issue_slot_0_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_1_com_1;
  wire [11:0] fp_issue_slot_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      fp_issue_slot_1_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_br_mask;
      fp_issue_slot_1_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_1_com_1 = 12'h0;
      fp_issue_slot_1_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_2_com_1;
  wire [11:0] fp_issue_slot_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      fp_issue_slot_2_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_br_mask;
      fp_issue_slot_2_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_2_com_1 = 12'h0;
      fp_issue_slot_2_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_3_com_1;
  wire [11:0] fp_issue_slot_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      fp_issue_slot_3_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_br_mask;
      fp_issue_slot_3_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_3_com_1 = 12'h0;
      fp_issue_slot_3_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_4_com_1;
  wire [11:0] fp_issue_slot_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      fp_issue_slot_4_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_br_mask;
      fp_issue_slot_4_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_4_com_1 = 12'h0;
      fp_issue_slot_4_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_5_com_1;
  wire [11:0] fp_issue_slot_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      fp_issue_slot_5_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_br_mask;
      fp_issue_slot_5_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_5_com_1 = 12'h0;
      fp_issue_slot_5_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_6_com_1;
  wire [11:0] fp_issue_slot_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      fp_issue_slot_6_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_br_mask;
      fp_issue_slot_6_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_6_com_1 = 12'h0;
      fp_issue_slot_6_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_7_com_1;
  wire [11:0] fp_issue_slot_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      fp_issue_slot_7_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_br_mask;
      fp_issue_slot_7_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_7_com_1 = 12'h0;
      fp_issue_slot_7_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_8_com_1;
  wire [11:0] fp_issue_slot_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      fp_issue_slot_8_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_br_mask;
      fp_issue_slot_8_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_8_com_1 = 12'h0;
      fp_issue_slot_8_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_9_com_1;
  wire [11:0] fp_issue_slot_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      fp_issue_slot_9_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_br_mask;
      fp_issue_slot_9_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_9_com_1 = 12'h0;
      fp_issue_slot_9_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_10_com_1;
  wire [11:0] fp_issue_slot_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      fp_issue_slot_10_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_br_mask;
      fp_issue_slot_10_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_10_com_1 = 12'h0;
      fp_issue_slot_10_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_11_com_1;
  wire [11:0] fp_issue_slot_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      fp_issue_slot_11_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_br_mask;
      fp_issue_slot_11_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_11_com_1 = 12'h0;
      fp_issue_slot_11_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_12_com_1;
  wire [11:0] fp_issue_slot_12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_rob_idx))
    begin
      fp_issue_slot_12_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_br_mask;
      fp_issue_slot_12_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_12_com_1 = 12'h0;
      fp_issue_slot_12_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_13_com_1;
  wire [11:0] fp_issue_slot_13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_rob_idx))
    begin
      fp_issue_slot_13_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_br_mask;
      fp_issue_slot_13_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_13_com_1 = 12'h0;
      fp_issue_slot_13_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_14_com_1;
  wire [11:0] fp_issue_slot_14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_rob_idx))
    begin
      fp_issue_slot_14_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_br_mask;
      fp_issue_slot_14_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_14_com_1 = 12'h0;
      fp_issue_slot_14_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_15_com_1;
  wire [11:0] fp_issue_slot_15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_rob_idx))
    begin
      fp_issue_slot_15_com_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_br_mask;
      fp_issue_slot_15_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_15_com_1 = 12'h0;
      fp_issue_slot_15_uncom_1 = soc1.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_bkq_0_com_1;
  wire [11:0] fp_bkq_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_rob_idx))
    begin
      fp_bkq_0_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_br_mask;
      fp_bkq_0_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_0_com_1 = 12'h0;
      fp_bkq_0_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_com_1;
  wire [11:0] fp_bkq_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_rob_idx))
    begin
      fp_bkq_1_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_br_mask;
      fp_bkq_1_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_com_1 = 12'h0;
      fp_bkq_1_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_br_mask;
    end
  end

  wire [11:0] fp_bkq_2_com_1;
  wire [11:0] fp_bkq_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_rob_idx))
    begin
      fp_bkq_2_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_br_mask;
      fp_bkq_2_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_2_com_1 = 12'h0;
      fp_bkq_2_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_br_mask;
    end
  end

  wire [11:0] fp_bkq_3_com_1;
  wire [11:0] fp_bkq_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_rob_idx))
    begin
      fp_bkq_3_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_br_mask;
      fp_bkq_3_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_3_com_1 = 12'h0;
      fp_bkq_3_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_br_mask;
    end
  end

  wire [11:0] fp_bkq_4_com_1;
  wire [11:0] fp_bkq_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_rob_idx))
    begin
      fp_bkq_4_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_br_mask;
      fp_bkq_4_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_4_com_1 = 12'h0;
      fp_bkq_4_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_br_mask;
    end
  end

  wire [11:0] fp_bkq_5_com_1;
  wire [11:0] fp_bkq_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_rob_idx))
    begin
      fp_bkq_5_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_br_mask;
      fp_bkq_5_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_5_com_1 = 12'h0;
      fp_bkq_5_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_br_mask;
    end
  end

  wire [11:0] fp_bkq_6_com_1;
  wire [11:0] fp_bkq_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_rob_idx))
    begin
      fp_bkq_6_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_br_mask;
      fp_bkq_6_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_6_com_1 = 12'h0;
      fp_bkq_6_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_0_com_1;
  wire [11:0] fp_bkq_1_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_rob_idx))
    begin
      fp_bkq_1_0_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_br_mask;
      fp_bkq_1_0_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_0_com_1 = 12'h0;
      fp_bkq_1_0_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_1_com_1;
  wire [11:0] fp_bkq_1_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_rob_idx))
    begin
      fp_bkq_1_1_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_br_mask;
      fp_bkq_1_1_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_1_com_1 = 12'h0;
      fp_bkq_1_1_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_2_com_1;
  wire [11:0] fp_bkq_1_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_rob_idx))
    begin
      fp_bkq_1_2_com_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_br_mask;
      fp_bkq_1_2_uncom_1 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_2_com_1 = 12'h0;
      fp_bkq_1_2_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_br_mask;
    end
  end

  wire [11:0] fdiv_buf_com_1;
  wire [11:0] fdiv_buf_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_rob_idx))
    begin
      fdiv_buf_com_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_br_mask;
      fdiv_buf_uncom_1 = 12'hfff;
    end
    else
    begin
      fdiv_buf_com_1 = 12'h0;
      fdiv_buf_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_br_mask;
    end
  end

  wire [11:0] fdiv_divsqrt_com_1;
  wire [11:0] fdiv_divsqrt_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_rob_idx))
    begin
      fdiv_divsqrt_com_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_br_mask;
      fdiv_divsqrt_uncom_1 = 12'hfff;
    end
    else
    begin
      fdiv_divsqrt_com_1 = 12'h0;
      fdiv_divsqrt_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_br_mask;
    end
  end

  wire [11:0] fdiv_out_com_1;
  wire [11:0] fdiv_out_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_rob_idx))
    begin
      fdiv_out_com_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_br_mask;
      fdiv_out_uncom_1 = 12'hfff;
    end
    else
    begin
      fdiv_out_com_1 = 12'h0;
      fdiv_out_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_br_mask;
    end
  end

  wire [11:0] fpu_T_2_0_com_1;
  wire [11:0] fpu_T_2_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_0_rob_idx))
    begin
      fpu_T_2_0_com_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_0_br_mask;
      fpu_T_2_0_uncom_1 = 12'hfff;
    end
    else
    begin
      fpu_T_2_0_com_1 = 12'h0;
      fpu_T_2_0_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_0_br_mask;
    end
  end

  wire [11:0] fpu_T_2_1_com_1;
  wire [11:0] fpu_T_2_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_1_rob_idx))
    begin
      fpu_T_2_1_com_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_1_br_mask;
      fpu_T_2_1_uncom_1 = 12'hfff;
    end
    else
    begin
      fpu_T_2_1_com_1 = 12'h0;
      fpu_T_2_1_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_1_br_mask;
    end
  end

  wire [11:0] fpu_T_2_2_com_1;
  wire [11:0] fpu_T_2_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_2_rob_idx))
    begin
      fpu_T_2_2_com_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_2_br_mask;
      fpu_T_2_2_uncom_1 = 12'hfff;
    end
    else
    begin
      fpu_T_2_2_com_1 = 12'h0;
      fpu_T_2_2_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_2_br_mask;
    end
  end

  wire [11:0] fpu_T_2_3_com_1;
  wire [11:0] fpu_T_2_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_3_rob_idx))
    begin
      fpu_T_2_3_com_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_3_br_mask;
      fpu_T_2_3_uncom_1 = 12'hfff;
    end
    else
    begin
      fpu_T_2_3_com_1 = 12'h0;
      fpu_T_2_3_uncom_1 = soc1.core.fp_pipeline.fpiu_unit.fpu._T_2_3_br_mask;
    end
  end

  wire [11:0] f_exe_reg_com_1;
  wire [11:0] f_exe_reg_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fregister_read.exe_reg_uops_0_rob_idx))
    begin
      f_exe_reg_com_1 = soc1.core.fp_pipeline.fregister_read.exe_reg_uops_0_br_mask;
      f_exe_reg_uncom_1 = 12'hfff;
    end
    else
    begin
      f_exe_reg_com_1 = 12'h0;
      f_exe_reg_uncom_1 = soc1.core.fp_pipeline.fregister_read.exe_reg_uops_0_br_mask;
    end
  end

  wire [11:0] f_rrd_com_1;
  wire [11:0] f_rrd_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.fp_pipeline.fregister_read.rrd_uops_0_rob_idx))
    begin
      f_rrd_com_1 = soc1.core.fp_pipeline.fregister_read.rrd_uops_0_br_mask;
      f_rrd_uncom_1 = 12'hfff;
    end
    else
    begin
      f_rrd_com_1 = 12'h0;
      f_rrd_uncom_1 = soc1.core.fp_pipeline.fregister_read.rrd_uops_0_br_mask;
    end
  end

  wire [11:0] int_issue_slot_0_com_1;
  wire [11:0] int_issue_slot_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      int_issue_slot_0_com_1 = soc1.core.int_issue_unit.slots_0.slot_uop_br_mask;
      int_issue_slot_0_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_0_com_1 = 12'h0;
      int_issue_slot_0_uncom_1 = soc1.core.int_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_1_com_1;
  wire [11:0] int_issue_slot_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      int_issue_slot_1_com_1 = soc1.core.int_issue_unit.slots_1.slot_uop_br_mask;
      int_issue_slot_1_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_1_com_1 = 12'h0;
      int_issue_slot_1_uncom_1 = soc1.core.int_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_2_com_1;
  wire [11:0] int_issue_slot_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      int_issue_slot_2_com_1 = soc1.core.int_issue_unit.slots_2.slot_uop_br_mask;
      int_issue_slot_2_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_2_com_1 = 12'h0;
      int_issue_slot_2_uncom_1 = soc1.core.int_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_3_com_1;
  wire [11:0] int_issue_slot_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      int_issue_slot_3_com_1 = soc1.core.int_issue_unit.slots_3.slot_uop_br_mask;
      int_issue_slot_3_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_3_com_1 = 12'h0;
      int_issue_slot_3_uncom_1 = soc1.core.int_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_4_com_1;
  wire [11:0] int_issue_slot_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      int_issue_slot_4_com_1 = soc1.core.int_issue_unit.slots_4.slot_uop_br_mask;
      int_issue_slot_4_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_4_com_1 = 12'h0;
      int_issue_slot_4_uncom_1 = soc1.core.int_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_5_com_1;
  wire [11:0] int_issue_slot_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      int_issue_slot_5_com_1 = soc1.core.int_issue_unit.slots_5.slot_uop_br_mask;
      int_issue_slot_5_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_5_com_1 = 12'h0;
      int_issue_slot_5_uncom_1 = soc1.core.int_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_6_com_1;
  wire [11:0] int_issue_slot_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      int_issue_slot_6_com_1 = soc1.core.int_issue_unit.slots_6.slot_uop_br_mask;
      int_issue_slot_6_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_6_com_1 = 12'h0;
      int_issue_slot_6_uncom_1 = soc1.core.int_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_7_com_1;
  wire [11:0] int_issue_slot_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      int_issue_slot_7_com_1 = soc1.core.int_issue_unit.slots_7.slot_uop_br_mask;
      int_issue_slot_7_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_7_com_1 = 12'h0;
      int_issue_slot_7_uncom_1 = soc1.core.int_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_8_com_1;
  wire [11:0] int_issue_slot_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      int_issue_slot_8_com_1 = soc1.core.int_issue_unit.slots_8.slot_uop_br_mask;
      int_issue_slot_8_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_8_com_1 = 12'h0;
      int_issue_slot_8_uncom_1 = soc1.core.int_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_9_com_1;
  wire [11:0] int_issue_slot_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      int_issue_slot_9_com_1 = soc1.core.int_issue_unit.slots_9.slot_uop_br_mask;
      int_issue_slot_9_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_9_com_1 = 12'h0;
      int_issue_slot_9_uncom_1 = soc1.core.int_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_10_com_1;
  wire [11:0] int_issue_slot_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      int_issue_slot_10_com_1 = soc1.core.int_issue_unit.slots_10.slot_uop_br_mask;
      int_issue_slot_10_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_10_com_1 = 12'h0;
      int_issue_slot_10_uncom_1 = soc1.core.int_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_11_com_1;
  wire [11:0] int_issue_slot_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      int_issue_slot_11_com_1 = soc1.core.int_issue_unit.slots_11.slot_uop_br_mask;
      int_issue_slot_11_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_11_com_1 = 12'h0;
      int_issue_slot_11_uncom_1 = soc1.core.int_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_12_com_1;
  wire [11:0] int_issue_slot_12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_12.slot_uop_rob_idx))
    begin
      int_issue_slot_12_com_1 = soc1.core.int_issue_unit.slots_12.slot_uop_br_mask;
      int_issue_slot_12_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_12_com_1 = 12'h0;
      int_issue_slot_12_uncom_1 = soc1.core.int_issue_unit.slots_12.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_13_com_1;
  wire [11:0] int_issue_slot_13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_13.slot_uop_rob_idx))
    begin
      int_issue_slot_13_com_1 = soc1.core.int_issue_unit.slots_13.slot_uop_br_mask;
      int_issue_slot_13_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_13_com_1 = 12'h0;
      int_issue_slot_13_uncom_1 = soc1.core.int_issue_unit.slots_13.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_14_com_1;
  wire [11:0] int_issue_slot_14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_14.slot_uop_rob_idx))
    begin
      int_issue_slot_14_com_1 = soc1.core.int_issue_unit.slots_14.slot_uop_br_mask;
      int_issue_slot_14_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_14_com_1 = 12'h0;
      int_issue_slot_14_uncom_1 = soc1.core.int_issue_unit.slots_14.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_15_com_1;
  wire [11:0] int_issue_slot_15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_15.slot_uop_rob_idx))
    begin
      int_issue_slot_15_com_1 = soc1.core.int_issue_unit.slots_15.slot_uop_br_mask;
      int_issue_slot_15_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_15_com_1 = 12'h0;
      int_issue_slot_15_uncom_1 = soc1.core.int_issue_unit.slots_15.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_16_com_1;
  wire [11:0] int_issue_slot_16_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_16.slot_uop_rob_idx))
    begin
      int_issue_slot_16_com_1 = soc1.core.int_issue_unit.slots_16.slot_uop_br_mask;
      int_issue_slot_16_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_16_com_1 = 12'h0;
      int_issue_slot_16_uncom_1 = soc1.core.int_issue_unit.slots_16.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_17_com_1;
  wire [11:0] int_issue_slot_17_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_17.slot_uop_rob_idx))
    begin
      int_issue_slot_17_com_1 = soc1.core.int_issue_unit.slots_17.slot_uop_br_mask;
      int_issue_slot_17_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_17_com_1 = 12'h0;
      int_issue_slot_17_uncom_1 = soc1.core.int_issue_unit.slots_17.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_18_com_1;
  wire [11:0] int_issue_slot_18_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_18.slot_uop_rob_idx))
    begin
      int_issue_slot_18_com_1 = soc1.core.int_issue_unit.slots_18.slot_uop_br_mask;
      int_issue_slot_18_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_18_com_1 = 12'h0;
      int_issue_slot_18_uncom_1 = soc1.core.int_issue_unit.slots_18.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_19_com_1;
  wire [11:0] int_issue_slot_19_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.int_issue_unit.slots_19.slot_uop_rob_idx))
    begin
      int_issue_slot_19_com_1 = soc1.core.int_issue_unit.slots_19.slot_uop_br_mask;
      int_issue_slot_19_uncom_1 = 12'hfff;
    end
    else
    begin
      int_issue_slot_19_com_1 = 12'h0;
      int_issue_slot_19_uncom_1 = soc1.core.int_issue_unit.slots_19.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_0_com_1;
  wire [11:0] mem_issue_slot_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      mem_issue_slot_0_com_1 = soc1.core.mem_issue_unit.slots_0.slot_uop_br_mask;
      mem_issue_slot_0_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_0_com_1 = 12'h0;
      mem_issue_slot_0_uncom_1 = soc1.core.mem_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_1_com_1;
  wire [11:0] mem_issue_slot_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      mem_issue_slot_1_com_1 = soc1.core.mem_issue_unit.slots_1.slot_uop_br_mask;
      mem_issue_slot_1_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_1_com_1 = 12'h0;
      mem_issue_slot_1_uncom_1 = soc1.core.mem_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_2_com_1;
  wire [11:0] mem_issue_slot_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      mem_issue_slot_2_com_1 = soc1.core.mem_issue_unit.slots_2.slot_uop_br_mask;
      mem_issue_slot_2_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_2_com_1 = 12'h0;
      mem_issue_slot_2_uncom_1 = soc1.core.mem_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_3_com_1;
  wire [11:0] mem_issue_slot_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      mem_issue_slot_3_com_1 = soc1.core.mem_issue_unit.slots_3.slot_uop_br_mask;
      mem_issue_slot_3_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_3_com_1 = 12'h0;
      mem_issue_slot_3_uncom_1 = soc1.core.mem_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_4_com_1;
  wire [11:0] mem_issue_slot_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      mem_issue_slot_4_com_1 = soc1.core.mem_issue_unit.slots_4.slot_uop_br_mask;
      mem_issue_slot_4_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_4_com_1 = 12'h0;
      mem_issue_slot_4_uncom_1 = soc1.core.mem_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_5_com_1;
  wire [11:0] mem_issue_slot_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      mem_issue_slot_5_com_1 = soc1.core.mem_issue_unit.slots_5.slot_uop_br_mask;
      mem_issue_slot_5_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_5_com_1 = 12'h0;
      mem_issue_slot_5_uncom_1 = soc1.core.mem_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_6_com_1;
  wire [11:0] mem_issue_slot_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      mem_issue_slot_6_com_1 = soc1.core.mem_issue_unit.slots_6.slot_uop_br_mask;
      mem_issue_slot_6_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_6_com_1 = 12'h0;
      mem_issue_slot_6_uncom_1 = soc1.core.mem_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_7_com_1;
  wire [11:0] mem_issue_slot_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      mem_issue_slot_7_com_1 = soc1.core.mem_issue_unit.slots_7.slot_uop_br_mask;
      mem_issue_slot_7_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_7_com_1 = 12'h0;
      mem_issue_slot_7_uncom_1 = soc1.core.mem_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_8_com_1;
  wire [11:0] mem_issue_slot_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      mem_issue_slot_8_com_1 = soc1.core.mem_issue_unit.slots_8.slot_uop_br_mask;
      mem_issue_slot_8_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_8_com_1 = 12'h0;
      mem_issue_slot_8_uncom_1 = soc1.core.mem_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_9_com_1;
  wire [11:0] mem_issue_slot_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      mem_issue_slot_9_com_1 = soc1.core.mem_issue_unit.slots_9.slot_uop_br_mask;
      mem_issue_slot_9_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_9_com_1 = 12'h0;
      mem_issue_slot_9_uncom_1 = soc1.core.mem_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_10_com_1;
  wire [11:0] mem_issue_slot_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      mem_issue_slot_10_com_1 = soc1.core.mem_issue_unit.slots_10.slot_uop_br_mask;
      mem_issue_slot_10_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_10_com_1 = 12'h0;
      mem_issue_slot_10_uncom_1 = soc1.core.mem_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_11_com_1;
  wire [11:0] mem_issue_slot_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.mem_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      mem_issue_slot_11_com_1 = soc1.core.mem_issue_unit.slots_11.slot_uop_br_mask;
      mem_issue_slot_11_uncom_1 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_11_com_1 = 12'h0;
      mem_issue_slot_11_uncom_1 = soc1.core.mem_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_0_com_1;
  wire [11:0] lsu_ldq_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx))
    begin
      lsu_ldq_0_com_1 = soc1.lsu.ldq_0_bits_uop_br_mask;
      lsu_ldq_0_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_0_com_1 = 12'h0;
      lsu_ldq_0_uncom_1 = soc1.lsu.ldq_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_1_com_1;
  wire [11:0] lsu_ldq_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx))
    begin
      lsu_ldq_1_com_1 = soc1.lsu.ldq_1_bits_uop_br_mask;
      lsu_ldq_1_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_1_com_1 = 12'h0;
      lsu_ldq_1_uncom_1 = soc1.lsu.ldq_1_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_2_com_1;
  wire [11:0] lsu_ldq_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx))
    begin
      lsu_ldq_2_com_1 = soc1.lsu.ldq_2_bits_uop_br_mask;
      lsu_ldq_2_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_2_com_1 = 12'h0;
      lsu_ldq_2_uncom_1 = soc1.lsu.ldq_2_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_3_com_1;
  wire [11:0] lsu_ldq_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx))
    begin
      lsu_ldq_3_com_1 = soc1.lsu.ldq_3_bits_uop_br_mask;
      lsu_ldq_3_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_3_com_1 = 12'h0;
      lsu_ldq_3_uncom_1 = soc1.lsu.ldq_3_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_4_com_1;
  wire [11:0] lsu_ldq_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx))
    begin
      lsu_ldq_4_com_1 = soc1.lsu.ldq_4_bits_uop_br_mask;
      lsu_ldq_4_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_4_com_1 = 12'h0;
      lsu_ldq_4_uncom_1 = soc1.lsu.ldq_4_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_5_com_1;
  wire [11:0] lsu_ldq_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx))
    begin
      lsu_ldq_5_com_1 = soc1.lsu.ldq_5_bits_uop_br_mask;
      lsu_ldq_5_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_5_com_1 = 12'h0;
      lsu_ldq_5_uncom_1 = soc1.lsu.ldq_5_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_6_com_1;
  wire [11:0] lsu_ldq_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx))
    begin
      lsu_ldq_6_com_1 = soc1.lsu.ldq_6_bits_uop_br_mask;
      lsu_ldq_6_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_6_com_1 = 12'h0;
      lsu_ldq_6_uncom_1 = soc1.lsu.ldq_6_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_7_com_1;
  wire [11:0] lsu_ldq_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx))
    begin
      lsu_ldq_7_com_1 = soc1.lsu.ldq_7_bits_uop_br_mask;
      lsu_ldq_7_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_7_com_1 = 12'h0;
      lsu_ldq_7_uncom_1 = soc1.lsu.ldq_7_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_8_com_1;
  wire [11:0] lsu_ldq_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx))
    begin
      lsu_ldq_8_com_1 = soc1.lsu.ldq_8_bits_uop_br_mask;
      lsu_ldq_8_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_8_com_1 = 12'h0;
      lsu_ldq_8_uncom_1 = soc1.lsu.ldq_8_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_9_com_1;
  wire [11:0] lsu_ldq_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx))
    begin
      lsu_ldq_9_com_1 = soc1.lsu.ldq_9_bits_uop_br_mask;
      lsu_ldq_9_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_9_com_1 = 12'h0;
      lsu_ldq_9_uncom_1 = soc1.lsu.ldq_9_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_10_com_1;
  wire [11:0] lsu_ldq_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx))
    begin
      lsu_ldq_10_com_1 = soc1.lsu.ldq_10_bits_uop_br_mask;
      lsu_ldq_10_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_10_com_1 = 12'h0;
      lsu_ldq_10_uncom_1 = soc1.lsu.ldq_10_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_11_com_1;
  wire [11:0] lsu_ldq_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx))
    begin
      lsu_ldq_11_com_1 = soc1.lsu.ldq_11_bits_uop_br_mask;
      lsu_ldq_11_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_11_com_1 = 12'h0;
      lsu_ldq_11_uncom_1 = soc1.lsu.ldq_11_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_12_com_1;
  wire [11:0] lsu_ldq_12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx))
    begin
      lsu_ldq_12_com_1 = soc1.lsu.ldq_12_bits_uop_br_mask;
      lsu_ldq_12_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_12_com_1 = 12'h0;
      lsu_ldq_12_uncom_1 = soc1.lsu.ldq_12_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_13_com_1;
  wire [11:0] lsu_ldq_13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx))
    begin
      lsu_ldq_13_com_1 = soc1.lsu.ldq_13_bits_uop_br_mask;
      lsu_ldq_13_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_13_com_1 = 12'h0;
      lsu_ldq_13_uncom_1 = soc1.lsu.ldq_13_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_14_com_1;
  wire [11:0] lsu_ldq_14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx))
    begin
      lsu_ldq_14_com_1 = soc1.lsu.ldq_14_bits_uop_br_mask;
      lsu_ldq_14_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_14_com_1 = 12'h0;
      lsu_ldq_14_uncom_1 = soc1.lsu.ldq_14_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_15_com_1;
  wire [11:0] lsu_ldq_15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx))
    begin
      lsu_ldq_15_com_1 = soc1.lsu.ldq_15_bits_uop_br_mask;
      lsu_ldq_15_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_ldq_15_com_1 = 12'h0;
      lsu_ldq_15_uncom_1 = soc1.lsu.ldq_15_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_com_1;
  wire [11:0] lsu_mem_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.mem_incoming_uop_0_rob_idx))
    begin
      lsu_mem_com_1 = soc1.lsu.mem_incoming_uop_0_br_mask;
      lsu_mem_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_mem_com_1 = 12'h0;
      lsu_mem_uncom_1 = soc1.lsu.mem_incoming_uop_0_br_mask;
    end
  end

  wire [11:0] lsu_mem_stq_com_1;
  wire [11:0] lsu_mem_stq_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.mem_stq_incoming_e_0_bits_uop_rob_idx))
    begin
      lsu_mem_stq_com_1 = soc1.lsu.mem_stq_incoming_e_0_bits_uop_br_mask;
      lsu_mem_stq_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_mem_stq_com_1 = 12'h0;
      lsu_mem_stq_uncom_1 = soc1.lsu.mem_stq_incoming_e_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_retry_com_1;
  wire [11:0] lsu_mem_retry_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.mem_stq_retry_e_bits_uop_rob_idx))
    begin
      lsu_mem_retry_com_1 = soc1.lsu.mem_stq_retry_e_bits_uop_br_mask;
      lsu_mem_retry_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_mem_retry_com_1 = 12'h0;
      lsu_mem_retry_uncom_1 = soc1.lsu.mem_stq_retry_e_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_xcpt_com_1;
  wire [11:0] lsu_mem_xcpt_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.mem_xcpt_uops_0_rob_idx))
    begin
      lsu_mem_xcpt_com_1 = soc1.lsu.mem_xcpt_uops_0_br_mask;
      lsu_mem_xcpt_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_mem_xcpt_com_1 = 12'h0;
      lsu_mem_xcpt_uncom_1 = soc1.lsu.mem_xcpt_uops_0_br_mask;
    end
  end

  wire [11:0] lsu_mem_stdf_com_1;
  wire [11:0] lsu_mem_stdf_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.mem_stdf_uop_rob_idx))
    begin
      lsu_mem_stdf_com_1 = soc1.lsu.mem_stdf_uop_br_mask;
      lsu_mem_stdf_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_mem_stdf_com_1 = 12'h0;
      lsu_mem_stdf_uncom_1 = soc1.lsu.mem_stdf_uop_br_mask;
    end
  end

  wire [11:0] lsu_stdf_com_1;
  wire [11:0] lsu_stdf_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stdf_clr_bsy_rob_idx))
    begin
      lsu_stdf_com_1 = soc1.lsu.stdf_clr_bsy_brmask;
      lsu_stdf_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stdf_com_1 = 12'h0;
      lsu_stdf_uncom_1 = soc1.lsu.stdf_clr_bsy_brmask;
    end
  end
  wire [11:0] lsu_stq_0_com_1;
  wire [11:0] lsu_stq_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx))
    begin
      lsu_stq_0_com_1 = soc1.lsu.stq_0_bits_uop_br_mask;
      lsu_stq_0_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_0_com_1 = 12'h0;
      lsu_stq_0_uncom_1 = soc1.lsu.stq_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_1_com_1;
  wire [11:0] lsu_stq_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx))
    begin
      lsu_stq_1_com_1 = soc1.lsu.stq_1_bits_uop_br_mask;
      lsu_stq_1_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_1_com_1 = 12'h0;
      lsu_stq_1_uncom_1 = soc1.lsu.stq_1_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_2_com_1;
  wire [11:0] lsu_stq_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx))
    begin
      lsu_stq_2_com_1 = soc1.lsu.stq_2_bits_uop_br_mask;
      lsu_stq_2_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_2_com_1 = 12'h0;
      lsu_stq_2_uncom_1 = soc1.lsu.stq_2_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_3_com_1;
  wire [11:0] lsu_stq_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx))
    begin
      lsu_stq_3_com_1 = soc1.lsu.stq_3_bits_uop_br_mask;
      lsu_stq_3_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_3_com_1 = 12'h0;
      lsu_stq_3_uncom_1 = soc1.lsu.stq_3_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_4_com_1;
  wire [11:0] lsu_stq_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx))
    begin
      lsu_stq_4_com_1 = soc1.lsu.stq_4_bits_uop_br_mask;
      lsu_stq_4_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_4_com_1 = 12'h0;
      lsu_stq_4_uncom_1 = soc1.lsu.stq_4_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_5_com_1;
  wire [11:0] lsu_stq_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx))
    begin
      lsu_stq_5_com_1 = soc1.lsu.stq_5_bits_uop_br_mask;
      lsu_stq_5_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_5_com_1 = 12'h0;
      lsu_stq_5_uncom_1 = soc1.lsu.stq_5_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_6_com_1;
  wire [11:0] lsu_stq_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx))
    begin
      lsu_stq_6_com_1 = soc1.lsu.stq_6_bits_uop_br_mask;
      lsu_stq_6_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_6_com_1 = 12'h0;
      lsu_stq_6_uncom_1 = soc1.lsu.stq_6_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_7_com_1;
  wire [11:0] lsu_stq_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx))
    begin
      lsu_stq_7_com_1 = soc1.lsu.stq_7_bits_uop_br_mask;
      lsu_stq_7_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_7_com_1 = 12'h0;
      lsu_stq_7_uncom_1 = soc1.lsu.stq_7_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_8_com_1;
  wire [11:0] lsu_stq_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx))
    begin
      lsu_stq_8_com_1 = soc1.lsu.stq_8_bits_uop_br_mask;
      lsu_stq_8_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_8_com_1 = 12'h0;
      lsu_stq_8_uncom_1 = soc1.lsu.stq_8_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_9_com_1;
  wire [11:0] lsu_stq_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx))
    begin
      lsu_stq_9_com_1 = soc1.lsu.stq_9_bits_uop_br_mask;
      lsu_stq_9_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_9_com_1 = 12'h0;
      lsu_stq_9_uncom_1 = soc1.lsu.stq_9_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_10_com_1;
  wire [11:0] lsu_stq_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx))
    begin
      lsu_stq_10_com_1 = soc1.lsu.stq_10_bits_uop_br_mask;
      lsu_stq_10_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_10_com_1 = 12'h0;
      lsu_stq_10_uncom_1 = soc1.lsu.stq_10_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_11_com_1;
  wire [11:0] lsu_stq_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx))
    begin
      lsu_stq_11_com_1 = soc1.lsu.stq_11_bits_uop_br_mask;
      lsu_stq_11_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_11_com_1 = 12'h0;
      lsu_stq_11_uncom_1 = soc1.lsu.stq_11_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_12_com_1;
  wire [11:0] lsu_stq_12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx))
    begin
      lsu_stq_12_com_1 = soc1.lsu.stq_12_bits_uop_br_mask;
      lsu_stq_12_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_12_com_1 = 12'h0;
      lsu_stq_12_uncom_1 = soc1.lsu.stq_12_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_13_com_1;
  wire [11:0] lsu_stq_13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx))
    begin
      lsu_stq_13_com_1 = soc1.lsu.stq_13_bits_uop_br_mask;
      lsu_stq_13_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_13_com_1 = 12'h0;
      lsu_stq_13_uncom_1 = soc1.lsu.stq_13_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_14_com_1;
  wire [11:0] lsu_stq_14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx))
    begin
      lsu_stq_14_com_1 = soc1.lsu.stq_14_bits_uop_br_mask;
      lsu_stq_14_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_14_com_1 = 12'h0;
      lsu_stq_14_uncom_1 = soc1.lsu.stq_14_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_15_com_1;
  wire [11:0] lsu_stq_15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx))
    begin
      lsu_stq_15_com_1 = soc1.lsu.stq_15_bits_uop_br_mask;
      lsu_stq_15_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_stq_15_com_1 = 12'h0;
      lsu_stq_15_uncom_1 = soc1.lsu.stq_15_bits_uop_br_mask;
    end
  end

  wire [11:0] rob__0_com_1;
  wire [11:0] rob__0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000000))
    begin
      rob__0_com_1 = soc1.core.rob.rob_uop__0_br_mask;
      rob__0_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__0_com_1 = 12'h0;
      rob__0_uncom_1 = soc1.core.rob.rob_uop__0_br_mask;
    end
  end

  wire [11:0] rob__1_com_1;
  wire [11:0] rob__1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000010))
    begin
      rob__1_com_1 = soc1.core.rob.rob_uop__1_br_mask;
      rob__1_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__1_com_1 = 12'h0;
      rob__1_uncom_1 = soc1.core.rob.rob_uop__1_br_mask;
    end
  end

  wire [11:0] rob__2_com_1;
  wire [11:0] rob__2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000100))
    begin
      rob__2_com_1 = soc1.core.rob.rob_uop__2_br_mask;
      rob__2_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__2_com_1 = 12'h0;
      rob__2_uncom_1 = soc1.core.rob.rob_uop__2_br_mask;
    end
  end

  wire [11:0] rob__3_com_1;
  wire [11:0] rob__3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000110))
    begin
      rob__3_com_1 = soc1.core.rob.rob_uop__3_br_mask;
      rob__3_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__3_com_1 = 12'h0;
      rob__3_uncom_1 = soc1.core.rob.rob_uop__3_br_mask;
    end
  end

  wire [11:0] rob__4_com_1;
  wire [11:0] rob__4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001000))
    begin
      rob__4_com_1 = soc1.core.rob.rob_uop__4_br_mask;
      rob__4_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__4_com_1 = 12'h0;
      rob__4_uncom_1 = soc1.core.rob.rob_uop__4_br_mask;
    end
  end

  wire [11:0] rob__5_com_1;
  wire [11:0] rob__5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001010))
    begin
      rob__5_com_1 = soc1.core.rob.rob_uop__5_br_mask;
      rob__5_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__5_com_1 = 12'h0;
      rob__5_uncom_1 = soc1.core.rob.rob_uop__5_br_mask;
    end
  end

  wire [11:0] rob__6_com_1;
  wire [11:0] rob__6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001100))
    begin
      rob__6_com_1 = soc1.core.rob.rob_uop__6_br_mask;
      rob__6_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__6_com_1 = 12'h0;
      rob__6_uncom_1 = soc1.core.rob.rob_uop__6_br_mask;
    end
  end

  wire [11:0] rob__7_com_1;
  wire [11:0] rob__7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001110))
    begin
      rob__7_com_1 = soc1.core.rob.rob_uop__7_br_mask;
      rob__7_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__7_com_1 = 12'h0;
      rob__7_uncom_1 = soc1.core.rob.rob_uop__7_br_mask;
    end
  end

  wire [11:0] rob__8_com_1;
  wire [11:0] rob__8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010000))
    begin
      rob__8_com_1 = soc1.core.rob.rob_uop__8_br_mask;
      rob__8_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__8_com_1 = 12'h0;
      rob__8_uncom_1 = soc1.core.rob.rob_uop__8_br_mask;
    end
  end

  wire [11:0] rob__9_com_1;
  wire [11:0] rob__9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010010))
    begin
      rob__9_com_1 = soc1.core.rob.rob_uop__9_br_mask;
      rob__9_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__9_com_1 = 12'h0;
      rob__9_uncom_1 = soc1.core.rob.rob_uop__9_br_mask;
    end
  end

  wire [11:0] rob__10_com_1;
  wire [11:0] rob__10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010100))
    begin
      rob__10_com_1 = soc1.core.rob.rob_uop__10_br_mask;
      rob__10_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__10_com_1 = 12'h0;
      rob__10_uncom_1 = soc1.core.rob.rob_uop__10_br_mask;
    end
  end

  wire [11:0] rob__11_com_1;
  wire [11:0] rob__11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010110))
    begin
      rob__11_com_1 = soc1.core.rob.rob_uop__11_br_mask;
      rob__11_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__11_com_1 = 12'h0;
      rob__11_uncom_1 = soc1.core.rob.rob_uop__11_br_mask;
    end
  end

  wire [11:0] rob__12_com_1;
  wire [11:0] rob__12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011000))
    begin
      rob__12_com_1 = soc1.core.rob.rob_uop__12_br_mask;
      rob__12_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__12_com_1 = 12'h0;
      rob__12_uncom_1 = soc1.core.rob.rob_uop__12_br_mask;
    end
  end

  wire [11:0] rob__13_com_1;
  wire [11:0] rob__13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011010))
    begin
      rob__13_com_1 = soc1.core.rob.rob_uop__13_br_mask;
      rob__13_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__13_com_1 = 12'h0;
      rob__13_uncom_1 = soc1.core.rob.rob_uop__13_br_mask;
    end
  end

  wire [11:0] rob__14_com_1;
  wire [11:0] rob__14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011100))
    begin
      rob__14_com_1 = soc1.core.rob.rob_uop__14_br_mask;
      rob__14_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__14_com_1 = 12'h0;
      rob__14_uncom_1 = soc1.core.rob.rob_uop__14_br_mask;
    end
  end

  wire [11:0] rob__15_com_1;
  wire [11:0] rob__15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011110))
    begin
      rob__15_com_1 = soc1.core.rob.rob_uop__15_br_mask;
      rob__15_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__15_com_1 = 12'h0;
      rob__15_uncom_1 = soc1.core.rob.rob_uop__15_br_mask;
    end
  end

  wire [11:0] rob__16_com_1;
  wire [11:0] rob__16_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100000))
    begin
      rob__16_com_1 = soc1.core.rob.rob_uop__16_br_mask;
      rob__16_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__16_com_1 = 12'h0;
      rob__16_uncom_1 = soc1.core.rob.rob_uop__16_br_mask;
    end
  end

  wire [11:0] rob__17_com_1;
  wire [11:0] rob__17_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100010))
    begin
      rob__17_com_1 = soc1.core.rob.rob_uop__17_br_mask;
      rob__17_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__17_com_1 = 12'h0;
      rob__17_uncom_1 = soc1.core.rob.rob_uop__17_br_mask;
    end
  end

  wire [11:0] rob__18_com_1;
  wire [11:0] rob__18_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100100))
    begin
      rob__18_com_1 = soc1.core.rob.rob_uop__18_br_mask;
      rob__18_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__18_com_1 = 12'h0;
      rob__18_uncom_1 = soc1.core.rob.rob_uop__18_br_mask;
    end
  end

  wire [11:0] rob__19_com_1;
  wire [11:0] rob__19_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100110))
    begin
      rob__19_com_1 = soc1.core.rob.rob_uop__19_br_mask;
      rob__19_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__19_com_1 = 12'h0;
      rob__19_uncom_1 = soc1.core.rob.rob_uop__19_br_mask;
    end
  end

  wire [11:0] rob__20_com_1;
  wire [11:0] rob__20_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101000))
    begin
      rob__20_com_1 = soc1.core.rob.rob_uop__20_br_mask;
      rob__20_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__20_com_1 = 12'h0;
      rob__20_uncom_1 = soc1.core.rob.rob_uop__20_br_mask;
    end
  end

  wire [11:0] rob__21_com_1;
  wire [11:0] rob__21_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101010))
    begin
      rob__21_com_1 = soc1.core.rob.rob_uop__21_br_mask;
      rob__21_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__21_com_1 = 12'h0;
      rob__21_uncom_1 = soc1.core.rob.rob_uop__21_br_mask;
    end
  end

  wire [11:0] rob__22_com_1;
  wire [11:0] rob__22_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101100))
    begin
      rob__22_com_1 = soc1.core.rob.rob_uop__22_br_mask;
      rob__22_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__22_com_1 = 12'h0;
      rob__22_uncom_1 = soc1.core.rob.rob_uop__22_br_mask;
    end
  end

  wire [11:0] rob__23_com_1;
  wire [11:0] rob__23_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101110))
    begin
      rob__23_com_1 = soc1.core.rob.rob_uop__23_br_mask;
      rob__23_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__23_com_1 = 12'h0;
      rob__23_uncom_1 = soc1.core.rob.rob_uop__23_br_mask;
    end
  end

  wire [11:0] rob__24_com_1;
  wire [11:0] rob__24_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110000))
    begin
      rob__24_com_1 = soc1.core.rob.rob_uop__24_br_mask;
      rob__24_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__24_com_1 = 12'h0;
      rob__24_uncom_1 = soc1.core.rob.rob_uop__24_br_mask;
    end
  end

  wire [11:0] rob__25_com_1;
  wire [11:0] rob__25_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110010))
    begin
      rob__25_com_1 = soc1.core.rob.rob_uop__25_br_mask;
      rob__25_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__25_com_1 = 12'h0;
      rob__25_uncom_1 = soc1.core.rob.rob_uop__25_br_mask;
    end
  end

  wire [11:0] rob__26_com_1;
  wire [11:0] rob__26_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110100))
    begin
      rob__26_com_1 = soc1.core.rob.rob_uop__26_br_mask;
      rob__26_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__26_com_1 = 12'h0;
      rob__26_uncom_1 = soc1.core.rob.rob_uop__26_br_mask;
    end
  end

  wire [11:0] rob__27_com_1;
  wire [11:0] rob__27_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110110))
    begin
      rob__27_com_1 = soc1.core.rob.rob_uop__27_br_mask;
      rob__27_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__27_com_1 = 12'h0;
      rob__27_uncom_1 = soc1.core.rob.rob_uop__27_br_mask;
    end
  end

  wire [11:0] rob__28_com_1;
  wire [11:0] rob__28_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111000))
    begin
      rob__28_com_1 = soc1.core.rob.rob_uop__28_br_mask;
      rob__28_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__28_com_1 = 12'h0;
      rob__28_uncom_1 = soc1.core.rob.rob_uop__28_br_mask;
    end
  end

  wire [11:0] rob__29_com_1;
  wire [11:0] rob__29_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111010))
    begin
      rob__29_com_1 = soc1.core.rob.rob_uop__29_br_mask;
      rob__29_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__29_com_1 = 12'h0;
      rob__29_uncom_1 = soc1.core.rob.rob_uop__29_br_mask;
    end
  end

  wire [11:0] rob__30_com_1;
  wire [11:0] rob__30_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111100))
    begin
      rob__30_com_1 = soc1.core.rob.rob_uop__30_br_mask;
      rob__30_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__30_com_1 = 12'h0;
      rob__30_uncom_1 = soc1.core.rob.rob_uop__30_br_mask;
    end
  end

  wire [11:0] rob__31_com_1;
  wire [11:0] rob__31_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111110))
    begin
      rob__31_com_1 = soc1.core.rob.rob_uop__31_br_mask;
      rob__31_uncom_1 = 12'hfff;
    end
    else
    begin
      rob__31_com_1 = 12'h0;
      rob__31_uncom_1 = soc1.core.rob.rob_uop__31_br_mask;
    end
  end

  wire [11:0] rob_1_0_com_1;
  wire [11:0] rob_1_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000001))
    begin
      rob_1_0_com_1 = soc1.core.rob.rob_uop_1_0_br_mask;
      rob_1_0_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_0_com_1 = 12'h0;
      rob_1_0_uncom_1 = soc1.core.rob.rob_uop_1_0_br_mask;
    end
  end

  wire [11:0] rob_1_1_com_1;
  wire [11:0] rob_1_1_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000011))
    begin
      rob_1_1_com_1 = soc1.core.rob.rob_uop_1_1_br_mask;
      rob_1_1_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_1_com_1 = 12'h0;
      rob_1_1_uncom_1 = soc1.core.rob.rob_uop_1_1_br_mask;
    end
  end

  wire [11:0] rob_1_2_com_1;
  wire [11:0] rob_1_2_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000101))
    begin
      rob_1_2_com_1 = soc1.core.rob.rob_uop_1_2_br_mask;
      rob_1_2_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_2_com_1 = 12'h0;
      rob_1_2_uncom_1 = soc1.core.rob.rob_uop_1_2_br_mask;
    end
  end

  wire [11:0] rob_1_3_com_1;
  wire [11:0] rob_1_3_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b000111))
    begin
      rob_1_3_com_1 = soc1.core.rob.rob_uop_1_3_br_mask;
      rob_1_3_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_3_com_1 = 12'h0;
      rob_1_3_uncom_1 = soc1.core.rob.rob_uop_1_3_br_mask;
    end
  end

  wire [11:0] rob_1_4_com_1;
  wire [11:0] rob_1_4_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001001))
    begin
      rob_1_4_com_1 = soc1.core.rob.rob_uop_1_4_br_mask;
      rob_1_4_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_4_com_1 = 12'h0;
      rob_1_4_uncom_1 = soc1.core.rob.rob_uop_1_4_br_mask;
    end
  end

  wire [11:0] rob_1_5_com_1;
  wire [11:0] rob_1_5_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001011))
    begin
      rob_1_5_com_1 = soc1.core.rob.rob_uop_1_5_br_mask;
      rob_1_5_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_5_com_1 = 12'h0;
      rob_1_5_uncom_1 = soc1.core.rob.rob_uop_1_5_br_mask;
    end
  end

  wire [11:0] rob_1_6_com_1;
  wire [11:0] rob_1_6_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001101))
    begin
      rob_1_6_com_1 = soc1.core.rob.rob_uop_1_6_br_mask;
      rob_1_6_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_6_com_1 = 12'h0;
      rob_1_6_uncom_1 = soc1.core.rob.rob_uop_1_6_br_mask;
    end
  end

  wire [11:0] rob_1_7_com_1;
  wire [11:0] rob_1_7_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b001111))
    begin
      rob_1_7_com_1 = soc1.core.rob.rob_uop_1_7_br_mask;
      rob_1_7_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_7_com_1 = 12'h0;
      rob_1_7_uncom_1 = soc1.core.rob.rob_uop_1_7_br_mask;
    end
  end

  wire [11:0] rob_1_8_com_1;
  wire [11:0] rob_1_8_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010001))
    begin
      rob_1_8_com_1 = soc1.core.rob.rob_uop_1_8_br_mask;
      rob_1_8_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_8_com_1 = 12'h0;
      rob_1_8_uncom_1 = soc1.core.rob.rob_uop_1_8_br_mask;
    end
  end

  wire [11:0] rob_1_9_com_1;
  wire [11:0] rob_1_9_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010011))
    begin
      rob_1_9_com_1 = soc1.core.rob.rob_uop_1_9_br_mask;
      rob_1_9_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_9_com_1 = 12'h0;
      rob_1_9_uncom_1 = soc1.core.rob.rob_uop_1_9_br_mask;
    end
  end

  wire [11:0] rob_1_10_com_1;
  wire [11:0] rob_1_10_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010101))
    begin
      rob_1_10_com_1 = soc1.core.rob.rob_uop_1_10_br_mask;
      rob_1_10_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_10_com_1 = 12'h0;
      rob_1_10_uncom_1 = soc1.core.rob.rob_uop_1_10_br_mask;
    end
  end

  wire [11:0] rob_1_11_com_1;
  wire [11:0] rob_1_11_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b010111))
    begin
      rob_1_11_com_1 = soc1.core.rob.rob_uop_1_11_br_mask;
      rob_1_11_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_11_com_1 = 12'h0;
      rob_1_11_uncom_1 = soc1.core.rob.rob_uop_1_11_br_mask;
    end
  end

  wire [11:0] rob_1_12_com_1;
  wire [11:0] rob_1_12_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011001))
    begin
      rob_1_12_com_1 = soc1.core.rob.rob_uop_1_12_br_mask;
      rob_1_12_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_12_com_1 = 12'h0;
      rob_1_12_uncom_1 = soc1.core.rob.rob_uop_1_12_br_mask;
    end
  end

  wire [11:0] rob_1_13_com_1;
  wire [11:0] rob_1_13_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011011))
    begin
      rob_1_13_com_1 = soc1.core.rob.rob_uop_1_13_br_mask;
      rob_1_13_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_13_com_1 = 12'h0;
      rob_1_13_uncom_1 = soc1.core.rob.rob_uop_1_13_br_mask;
    end
  end

  wire [11:0] rob_1_14_com_1;
  wire [11:0] rob_1_14_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011101))
    begin
      rob_1_14_com_1 = soc1.core.rob.rob_uop_1_14_br_mask;
      rob_1_14_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_14_com_1 = 12'h0;
      rob_1_14_uncom_1 = soc1.core.rob.rob_uop_1_14_br_mask;
    end
  end

  wire [11:0] rob_1_15_com_1;
  wire [11:0] rob_1_15_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b011111))
    begin
      rob_1_15_com_1 = soc1.core.rob.rob_uop_1_15_br_mask;
      rob_1_15_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_15_com_1 = 12'h0;
      rob_1_15_uncom_1 = soc1.core.rob.rob_uop_1_15_br_mask;
    end
  end

  wire [11:0] rob_1_16_com_1;
  wire [11:0] rob_1_16_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100001))
    begin
      rob_1_16_com_1 = soc1.core.rob.rob_uop_1_16_br_mask;
      rob_1_16_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_16_com_1 = 12'h0;
      rob_1_16_uncom_1 = soc1.core.rob.rob_uop_1_16_br_mask;
    end
  end

  wire [11:0] rob_1_17_com_1;
  wire [11:0] rob_1_17_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100011))
    begin
      rob_1_17_com_1 = soc1.core.rob.rob_uop_1_17_br_mask;
      rob_1_17_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_17_com_1 = 12'h0;
      rob_1_17_uncom_1 = soc1.core.rob.rob_uop_1_17_br_mask;
    end
  end

  wire [11:0] rob_1_18_com_1;
  wire [11:0] rob_1_18_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100101))
    begin
      rob_1_18_com_1 = soc1.core.rob.rob_uop_1_18_br_mask;
      rob_1_18_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_18_com_1 = 12'h0;
      rob_1_18_uncom_1 = soc1.core.rob.rob_uop_1_18_br_mask;
    end
  end

  wire [11:0] rob_1_19_com_1;
  wire [11:0] rob_1_19_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b100111))
    begin
      rob_1_19_com_1 = soc1.core.rob.rob_uop_1_19_br_mask;
      rob_1_19_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_19_com_1 = 12'h0;
      rob_1_19_uncom_1 = soc1.core.rob.rob_uop_1_19_br_mask;
    end
  end

  wire [11:0] rob_1_20_com_1;
  wire [11:0] rob_1_20_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101001))
    begin
      rob_1_20_com_1 = soc1.core.rob.rob_uop_1_20_br_mask;
      rob_1_20_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_20_com_1 = 12'h0;
      rob_1_20_uncom_1 = soc1.core.rob.rob_uop_1_20_br_mask;
    end
  end

  wire [11:0] rob_1_21_com_1;
  wire [11:0] rob_1_21_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101011))
    begin
      rob_1_21_com_1 = soc1.core.rob.rob_uop_1_21_br_mask;
      rob_1_21_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_21_com_1 = 12'h0;
      rob_1_21_uncom_1 = soc1.core.rob.rob_uop_1_21_br_mask;
    end
  end

  wire [11:0] rob_1_22_com_1;
  wire [11:0] rob_1_22_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101101))
    begin
      rob_1_22_com_1 = soc1.core.rob.rob_uop_1_22_br_mask;
      rob_1_22_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_22_com_1 = 12'h0;
      rob_1_22_uncom_1 = soc1.core.rob.rob_uop_1_22_br_mask;
    end
  end

  wire [11:0] rob_1_23_com_1;
  wire [11:0] rob_1_23_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b101111))
    begin
      rob_1_23_com_1 = soc1.core.rob.rob_uop_1_23_br_mask;
      rob_1_23_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_23_com_1 = 12'h0;
      rob_1_23_uncom_1 = soc1.core.rob.rob_uop_1_23_br_mask;
    end
  end

  wire [11:0] rob_1_24_com_1;
  wire [11:0] rob_1_24_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110001))
    begin
      rob_1_24_com_1 = soc1.core.rob.rob_uop_1_24_br_mask;
      rob_1_24_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_24_com_1 = 12'h0;
      rob_1_24_uncom_1 = soc1.core.rob.rob_uop_1_24_br_mask;
    end
  end

  wire [11:0] rob_1_25_com_1;
  wire [11:0] rob_1_25_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110011))
    begin
      rob_1_25_com_1 = soc1.core.rob.rob_uop_1_25_br_mask;
      rob_1_25_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_25_com_1 = 12'h0;
      rob_1_25_uncom_1 = soc1.core.rob.rob_uop_1_25_br_mask;
    end
  end

  wire [11:0] rob_1_26_com_1;
  wire [11:0] rob_1_26_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110101))
    begin
      rob_1_26_com_1 = soc1.core.rob.rob_uop_1_26_br_mask;
      rob_1_26_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_26_com_1 = 12'h0;
      rob_1_26_uncom_1 = soc1.core.rob.rob_uop_1_26_br_mask;
    end
  end

  wire [11:0] rob_1_27_com_1;
  wire [11:0] rob_1_27_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b110111))
    begin
      rob_1_27_com_1 = soc1.core.rob.rob_uop_1_27_br_mask;
      rob_1_27_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_27_com_1 = 12'h0;
      rob_1_27_uncom_1 = soc1.core.rob.rob_uop_1_27_br_mask;
    end
  end

  wire [11:0] rob_1_28_com_1;
  wire [11:0] rob_1_28_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111001))
    begin
      rob_1_28_com_1 = soc1.core.rob.rob_uop_1_28_br_mask;
      rob_1_28_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_28_com_1 = 12'h0;
      rob_1_28_uncom_1 = soc1.core.rob.rob_uop_1_28_br_mask;
    end
  end

  wire [11:0] rob_1_29_com_1;
  wire [11:0] rob_1_29_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111011))
    begin
      rob_1_29_com_1 = soc1.core.rob.rob_uop_1_29_br_mask;
      rob_1_29_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_29_com_1 = 12'h0;
      rob_1_29_uncom_1 = soc1.core.rob.rob_uop_1_29_br_mask;
    end
  end

  wire [11:0] rob_1_30_com_1;
  wire [11:0] rob_1_30_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111101))
    begin
      rob_1_30_com_1 = soc1.core.rob.rob_uop_1_30_br_mask;
      rob_1_30_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_30_com_1 = 12'h0;
      rob_1_30_uncom_1 = soc1.core.rob.rob_uop_1_30_br_mask;
    end
  end

  wire [11:0] rob_1_31_com_1;
  wire [11:0] rob_1_31_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, 6'b111111))
    begin
      rob_1_31_com_1 = soc1.core.rob.rob_uop_1_31_br_mask;
      rob_1_31_uncom_1 = 12'hfff;
    end
    else
    begin
      rob_1_31_com_1 = 12'h0;
      rob_1_31_uncom_1 = soc1.core.rob.rob_uop_1_31_br_mask;
    end
  end

  wire [11:0] lsu_clr_bsy_brmask_0_com_1;
  wire [11:0] lsu_clr_bsy_brmask_0_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.clr_bsy_rob_idx_0))
    begin
      lsu_clr_bsy_brmask_0_com_1 = soc1.lsu.clr_bsy_brmask_0;
      lsu_clr_bsy_brmask_0_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_clr_bsy_brmask_0_com_1 = 12'h0;
      lsu_clr_bsy_brmask_0_uncom_1 = soc1.lsu.clr_bsy_brmask_0;
    end
  end

  wire [11:0] lsu_r_xcpt_com_1;
  wire [11:0] lsu_r_xcpt_uncom_1;

  always @(*)
  begin
    if (isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.r_xcpt_uop_rob_idx))
    begin
      lsu_r_xcpt_com_1 = soc1.lsu.r_xcpt_uop_br_mask;
      lsu_r_xcpt_uncom_1 = 12'hfff;
    end
    else
    begin
      lsu_r_xcpt_com_1 = 12'h0;
      lsu_r_xcpt_uncom_1 = soc1.lsu.r_xcpt_uop_br_mask;
    end
  end

//bookkeeping buffers without explicit rob_idx
//check if loadqueue/storequeue are used and get ROB ID from ldq_idx/stq_idx

  wire [11:0] respq_uops_0_ldq_com_1;
  wire [11:0] respq_uops_0_ldq_uncom_1;

  always @(*)
  begin
    respq_uops_0_ldq_com_1 = 12'h0;
    respq_uops_0_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_0_ldq_com_1 = soc1.dcache.mshrs.respq.uops_0_br_mask;
        respq_uops_0_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_0_ldq_com_1 = 12'h0;
        respq_uops_0_ldq_uncom_1 = soc1.dcache.mshrs.respq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_1_ldq_com_1;
  wire [11:0] respq_uops_1_ldq_uncom_1;

  always @(*)
  begin
    respq_uops_1_ldq_com_1 = 12'h0;
    respq_uops_1_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_1_ldq_com_1 = soc1.dcache.mshrs.respq.uops_1_br_mask;
        respq_uops_1_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_1_ldq_com_1 = 12'h0;
        respq_uops_1_ldq_uncom_1 = soc1.dcache.mshrs.respq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_2_ldq_com_1;
  wire [11:0] respq_uops_2_ldq_uncom_1;

  always @(*)
  begin
    respq_uops_2_ldq_com_1 = 12'h0;
    respq_uops_2_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_2_ldq_com_1 = soc1.dcache.mshrs.respq.uops_2_br_mask;
        respq_uops_2_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_2_ldq_com_1 = 12'h0;
        respq_uops_2_ldq_uncom_1 = soc1.dcache.mshrs.respq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_3_ldq_com_1;
  wire [11:0] respq_uops_3_ldq_uncom_1;

  always @(*)
  begin
    respq_uops_3_ldq_com_1 = 12'h0;
    respq_uops_3_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_3_ldq_com_1 = soc1.dcache.mshrs.respq.uops_3_br_mask;
        respq_uops_3_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_3_ldq_com_1 = 12'h0;
        respq_uops_3_ldq_uncom_1 = soc1.dcache.mshrs.respq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_0_stq_com_1;
  wire [11:0] respq_uops_0_stq_uncom_1;

  always @(*)
  begin
    respq_uops_0_stq_com_1 = 12'h0;
    respq_uops_0_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_0_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_0_stq_com_1 = soc1.dcache.mshrs.respq.uops_0_br_mask;
        respq_uops_0_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_0_stq_com_1 = 12'h0;
        respq_uops_0_stq_uncom_1 = soc1.dcache.mshrs.respq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_1_stq_com_1;
  wire [11:0] respq_uops_1_stq_uncom_1;

  always @(*)
  begin
    respq_uops_1_stq_com_1 = 12'h0;
    respq_uops_1_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_1_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_1_stq_com_1 = soc1.dcache.mshrs.respq.uops_1_br_mask;
        respq_uops_1_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_1_stq_com_1 = 12'h0;
        respq_uops_1_stq_uncom_1 = soc1.dcache.mshrs.respq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_2_stq_com_1;
  wire [11:0] respq_uops_2_stq_uncom_1;

  always @(*)
  begin
    respq_uops_2_stq_com_1 = 12'h0;
    respq_uops_2_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_2_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_2_stq_com_1 = soc1.dcache.mshrs.respq.uops_2_br_mask;
        respq_uops_2_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_2_stq_com_1 = 12'h0;
        respq_uops_2_stq_uncom_1 = soc1.dcache.mshrs.respq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_3_stq_com_1;
  wire [11:0] respq_uops_3_stq_uncom_1;

  always @(*)
  begin
    respq_uops_3_stq_com_1 = 12'h0;
    respq_uops_3_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.respq.uops_3_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.respq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_3_stq_com_1 = soc1.dcache.mshrs.respq.uops_3_br_mask;
        respq_uops_3_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        respq_uops_3_stq_com_1 = 12'h0;
        respq_uops_3_stq_uncom_1 = soc1.dcache.mshrs.respq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mmios_0_ldq_com_1;
  wire [11:0] mmios_0_ldq_uncom_1;

  always @(*)
  begin
    mmios_0_ldq_com_1 = 12'h0;
    mmios_0_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mmios_0.req_uop_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        mmios_0_ldq_com_1 = soc1.dcache.mshrs.mmios_0.req_uop_br_mask;
        mmios_0_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mmios_0_ldq_com_1 = 12'h0;
        mmios_0_ldq_uncom_1 = soc1.dcache.mshrs.mmios_0.req_uop_br_mask;
      end
    end
  end

  wire [11:0] mmios_0_stq_com_1;
  wire [11:0] mmios_0_stq_uncom_1;

  always @(*)
  begin
    mmios_0_stq_com_1 = 12'h0;
    mmios_0_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mmios_0.req_uop_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
	 soc1.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        mmios_0_stq_com_1 = soc1.dcache.mshrs.mmios_0.req_uop_br_mask;
        mmios_0_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mmios_0_stq_com_1 = 12'h0;
        mmios_0_stq_uncom_1 = soc1.dcache.mshrs.mmios_0.req_uop_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_0_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_0_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_0_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_0_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_0_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
        mshrs_0_rpq_uops_0_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_0_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_1_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_1_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_1_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_1_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_1_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
        mshrs_0_rpq_uops_1_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_0_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_2_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_2_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_2_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_2_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_2_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
        mshrs_0_rpq_uops_2_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_2_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_2_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_3_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_3_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_3_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_3_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_3_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
        mshrs_0_rpq_uops_3_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_3_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_3_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_4_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_4_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_4_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_4_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_4_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_4_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
        mshrs_0_rpq_uops_4_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_4_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_4_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_5_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_5_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_5_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_5_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_5_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_5_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
        mshrs_0_rpq_uops_5_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_5_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_5_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_6_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_6_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_6_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_6_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_6_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_6_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
        mshrs_0_rpq_uops_6_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_6_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_6_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_7_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_7_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_7_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_7_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_7_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_7_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
        mshrs_0_rpq_uops_7_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_7_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_7_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_8_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_8_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_8_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_8_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_8_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_8_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
        mshrs_0_rpq_uops_8_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_8_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_8_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_9_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_9_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_9_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_9_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_9_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_9_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
        mshrs_0_rpq_uops_9_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_9_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_9_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_10_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_10_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_10_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_10_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_10_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_10_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
        mshrs_0_rpq_uops_10_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_10_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_10_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_11_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_11_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_11_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_11_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_11_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_11_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
        mshrs_0_rpq_uops_11_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_11_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_11_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_12_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_12_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_12_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_12_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_12_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_12_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
        mshrs_0_rpq_uops_12_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_12_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_12_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_13_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_13_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_13_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_13_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_13_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_13_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
        mshrs_0_rpq_uops_13_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_13_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_13_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_14_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_14_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_14_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_14_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_14_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_14_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
        mshrs_0_rpq_uops_14_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_14_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_14_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_15_ldq_com_1;
  wire [11:0] mshrs_0_rpq_uops_15_ldq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_15_ldq_com_1 = 12'h0;
    mshrs_0_rpq_uops_15_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_15_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_15_ldq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
        mshrs_0_rpq_uops_15_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_15_ldq_com_1 = 12'h0;
        mshrs_0_rpq_uops_15_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
      end
    end
  end


  wire [11:0] mshrs_0_rpq_uops_0_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_0_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_0_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_0_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_0_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_0_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
        mshrs_0_rpq_uops_0_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_0_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_1_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_1_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_1_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_1_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_1_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_1_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
        mshrs_0_rpq_uops_1_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_0_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_2_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_2_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_2_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_2_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_2_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_2_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
        mshrs_0_rpq_uops_2_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_2_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_2_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_3_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_3_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_3_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_3_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_3_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_3_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
        mshrs_0_rpq_uops_3_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_3_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_3_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_4_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_4_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_4_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_4_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_4_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_4_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
        mshrs_0_rpq_uops_4_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_4_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_4_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_5_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_5_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_5_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_5_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_5_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_5_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
        mshrs_0_rpq_uops_5_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_5_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_5_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_6_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_6_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_6_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_6_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_6_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_6_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
        mshrs_0_rpq_uops_6_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_6_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_6_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_7_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_7_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_7_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_7_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_7_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_7_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
        mshrs_0_rpq_uops_7_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_7_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_7_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_8_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_8_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_8_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_8_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_8_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_8_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
        mshrs_0_rpq_uops_8_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_8_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_8_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_9_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_9_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_9_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_9_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_9_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_9_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
        mshrs_0_rpq_uops_9_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_9_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_9_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_10_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_10_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_10_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_10_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_10_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_10_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
        mshrs_0_rpq_uops_10_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_10_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_10_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_11_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_11_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_11_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_11_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_11_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_11_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
        mshrs_0_rpq_uops_11_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_11_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_11_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_12_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_12_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_12_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_12_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_12_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_12_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
        mshrs_0_rpq_uops_12_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_12_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_12_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_13_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_13_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_13_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_13_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_13_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_13_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
        mshrs_0_rpq_uops_13_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_13_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_13_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_14_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_14_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_14_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_14_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_14_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_14_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
        mshrs_0_rpq_uops_14_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_14_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_14_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_15_stq_com_1;
  wire [11:0] mshrs_0_rpq_uops_15_stq_uncom_1;

  always @(*)
  begin
    mshrs_0_rpq_uops_15_stq_com_1 = 12'h0;
    mshrs_0_rpq_uops_15_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_0.rpq.uops_15_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_15_stq_com_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
        mshrs_0_rpq_uops_15_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_15_stq_com_1 = 12'h0;
        mshrs_0_rpq_uops_15_stq_uncom_1 = soc1.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_0_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_0_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_0_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_0_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_0_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
        mshrs_1_rpq_uops_0_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_0_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_1_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_1_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_1_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_1_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_1_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
        mshrs_1_rpq_uops_1_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_0_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_2_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_2_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_2_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_2_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_2_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
        mshrs_1_rpq_uops_2_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_2_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_2_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_3_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_3_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_3_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_3_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_3_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
        mshrs_1_rpq_uops_3_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_3_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_3_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_4_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_4_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_4_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_4_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_4_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_4_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
        mshrs_1_rpq_uops_4_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_4_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_4_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_5_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_5_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_5_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_5_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_5_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_5_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
        mshrs_1_rpq_uops_5_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_5_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_5_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_6_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_6_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_6_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_6_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_6_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_6_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
        mshrs_1_rpq_uops_6_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_6_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_6_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_7_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_7_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_7_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_7_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_7_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_7_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
        mshrs_1_rpq_uops_7_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_7_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_7_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_8_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_8_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_8_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_8_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_8_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_8_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
        mshrs_1_rpq_uops_8_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_8_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_8_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_9_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_9_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_9_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_9_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_9_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_9_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
        mshrs_1_rpq_uops_9_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_9_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_9_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_10_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_10_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_10_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_10_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_10_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_10_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
        mshrs_1_rpq_uops_10_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_10_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_10_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_11_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_11_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_11_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_11_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_11_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_11_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
        mshrs_1_rpq_uops_11_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_11_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_11_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_12_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_12_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_12_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_12_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_12_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_12_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
        mshrs_1_rpq_uops_12_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_12_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_12_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_13_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_13_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_13_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_13_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_13_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_13_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
        mshrs_1_rpq_uops_13_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_13_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_13_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_14_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_14_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_14_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_14_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_14_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_14_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
        mshrs_1_rpq_uops_14_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_14_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_14_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_15_ldq_com_1;
  wire [11:0] mshrs_1_rpq_uops_15_ldq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_15_ldq_com_1 = 12'h0;
    mshrs_1_rpq_uops_15_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_15_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_15_ldq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
        mshrs_1_rpq_uops_15_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_15_ldq_com_1 = 12'h0;
        mshrs_1_rpq_uops_15_ldq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
      end
    end
  end


  wire [11:0] mshrs_1_rpq_uops_0_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_0_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_0_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_0_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_0_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_0_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
        mshrs_1_rpq_uops_0_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_0_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_1_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_1_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_1_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_1_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_1_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_1_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
        mshrs_1_rpq_uops_1_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_0_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_2_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_2_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_2_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_2_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_2_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_2_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
        mshrs_1_rpq_uops_2_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_2_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_2_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_3_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_3_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_3_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_3_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_3_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_3_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
        mshrs_1_rpq_uops_3_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_3_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_3_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_4_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_4_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_4_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_4_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_4_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_4_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
        mshrs_1_rpq_uops_4_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_4_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_4_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_5_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_5_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_5_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_5_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_5_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_5_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
        mshrs_1_rpq_uops_5_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_5_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_5_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_6_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_6_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_6_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_6_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_6_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_6_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
        mshrs_1_rpq_uops_6_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_6_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_6_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_7_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_7_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_7_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_7_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_7_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_7_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
        mshrs_1_rpq_uops_7_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_7_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_7_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_8_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_8_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_8_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_8_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_8_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_8_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
        mshrs_1_rpq_uops_8_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_8_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_8_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_9_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_9_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_9_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_9_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_9_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_9_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
        mshrs_1_rpq_uops_9_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_9_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_9_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_10_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_10_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_10_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_10_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_10_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_10_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
        mshrs_1_rpq_uops_10_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_10_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_10_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_11_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_11_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_11_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_11_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_11_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_11_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
        mshrs_1_rpq_uops_11_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_11_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_11_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_12_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_12_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_12_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_12_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_12_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_12_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
        mshrs_1_rpq_uops_12_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_12_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_12_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_13_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_13_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_13_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_13_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_13_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_13_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
        mshrs_1_rpq_uops_13_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_13_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_13_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_14_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_14_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_14_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_14_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_14_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_14_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
        mshrs_1_rpq_uops_14_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_14_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_14_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_15_stq_com_1;
  wire [11:0] mshrs_1_rpq_uops_15_stq_uncom_1;

  always @(*)
  begin
    mshrs_1_rpq_uops_15_stq_com_1 = 12'h0;
    mshrs_1_rpq_uops_15_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.mshrs.mshrs_1.rpq.uops_15_uses_stq == 1'b1)
    begin
      if(soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_15_stq_com_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
        mshrs_1_rpq_uops_15_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_15_stq_com_1 = 12'h0;
        mshrs_1_rpq_uops_15_stq_uncom_1 = soc1.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
      end
    end
  end

  wire [11:0] dcache_s1_req_ldq_com_1;
  wire [11:0] dcache_s1_req_ldq_uncom_1;

  always @(*)
  begin
    dcache_s1_req_ldq_com_1 = 12'h0;
    dcache_s1_req_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.s1_req_0_uop_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.s1_req_0_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s1_req_ldq_com_1 = soc1.dcache.s1_req_0_uop_br_mask;
        dcache_s1_req_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        dcache_s1_req_ldq_com_1 = 12'h0;
        dcache_s1_req_ldq_uncom_1 = soc1.dcache.s1_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s1_req_stq_com_1;
  wire [11:0] dcache_s1_req_stq_uncom_1;

  always @(*)
  begin
    dcache_s1_req_stq_com_1 = 12'h0;
    dcache_s1_req_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.s1_req_0_uop_uses_stq == 1'b1)
    begin
      if(soc1.dcache.s1_req_0_uop_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.s1_req_0_uop_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s1_req_stq_com_1 = soc1.dcache.s1_req_0_uop_br_mask;
        dcache_s1_req_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        dcache_s1_req_stq_com_1 = 12'h0;
        dcache_s1_req_stq_uncom_1 = soc1.dcache.s1_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s2_req_ldq_com_1;
  wire [11:0] dcache_s2_req_ldq_uncom_1;

  always @(*)
  begin
    dcache_s2_req_ldq_com_1 = 12'h0;
    dcache_s2_req_ldq_uncom_1 = 12'hfff;
    if(soc1.dcache.s2_req_0_uop_uses_ldq == 1'b1)
    begin
      if(soc1.dcache.s2_req_0_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_0_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_1_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_2_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_3_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_4_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_5_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_6_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_7_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_8_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_9_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_10_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_11_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_12_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_13_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_14_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_ldq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s2_req_ldq_com_1 = soc1.dcache.s2_req_0_uop_br_mask;
        dcache_s2_req_ldq_uncom_1 = 12'hfff;
      end
      else
      begin
        dcache_s2_req_ldq_com_1 = 12'h0;
        dcache_s2_req_ldq_uncom_1 = soc1.dcache.s2_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s2_req_stq_com_1;
  wire [11:0] dcache_s2_req_stq_uncom_1;

  always @(*)
  begin
    dcache_s2_req_stq_com_1 = 12'h0;
    dcache_s2_req_stq_uncom_1 = 12'hfff;
    if(soc1.dcache.s2_req_0_uop_uses_stq == 1'b1)
    begin
      if(soc1.dcache.s2_req_0_uop_stq_idx == 4'h0 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_0_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h1 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_1_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h2 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_2_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h3 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_3_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h4 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_4_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h5 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_5_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h6 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_6_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h7 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_7_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h8 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_8_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'h9 && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_9_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'ha && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_10_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'hb && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_11_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'hc && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_12_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'hd && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_13_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'he && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_14_bits_uop_rob_idx) ||
   soc1.dcache.s2_req_0_uop_stq_idx == 4'hf && isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s2_req_stq_com_1 = soc1.dcache.s2_req_0_uop_br_mask;
        dcache_s2_req_stq_uncom_1 = 12'hfff;
      end
      else
      begin
        dcache_s2_req_stq_com_1 = 12'h0;
        dcache_s2_req_stq_uncom_1 = soc1.dcache.s2_req_0_uop_br_mask;
      end
    end
  end


//*******************************************//
	wire [11:0] uncommitable_masks_1;
	wire [11:0] commitable_masks_1;

//AND all uncommittable masks
assign uncommitable_masks_1 = alu_T_2_uncom_1 &
div_r_uncom_1 & exe_reg_0_uncom_1 & exe_reg_1_uncom_1 & exe_reg_2_uncom_1 & rrd_0_uncom_1 &
rrd_1_uncom_1 & rrd_2_uncom_1 & bkq_0_uncom_1 & bkq_1_uncom_1 & bkq_2_uncom_1 &
bkq_3_uncom_1 & bkq_4_uncom_1 & alu_T_2_0_uncom_1 & alu_T_2_1_uncom_1 & alu_T_2_2_uncom_1 &
ifpu_T_2_0_uncom_1 & ifpu_T_2_1_uncom_1 & imul_T_2_0_uncom_1 & imul_T_2_1_uncom_1 &
imul_T_2_2_uncom_1 & fp_issue_slot_0_uncom_1 & fp_issue_slot_1_uncom_1 & fp_issue_slot_2_uncom_1 & fp_issue_slot_3_uncom_1 &
fp_issue_slot_4_uncom_1 & fp_issue_slot_5_uncom_1 & fp_issue_slot_6_uncom_1 & fp_issue_slot_7_uncom_1 & fp_issue_slot_8_uncom_1 &
fp_issue_slot_9_uncom_1 & fp_issue_slot_10_uncom_1 & fp_issue_slot_11_uncom_1 & fp_issue_slot_12_uncom_1 & fp_issue_slot_13_uncom_1 &
fp_issue_slot_14_uncom_1 & fp_issue_slot_15_uncom_1 & fp_bkq_0_uncom_1 & fp_bkq_1_uncom_1 & fp_bkq_2_uncom_1 &
fp_bkq_3_uncom_1 & fp_bkq_4_uncom_1 & fp_bkq_5_uncom_1 & fp_bkq_6_uncom_1 & fp_bkq_1_0_uncom_1 &
fp_bkq_1_1_uncom_1 & fp_bkq_1_2_uncom_1 & fdiv_buf_uncom_1 & fdiv_divsqrt_uncom_1 & fdiv_out_uncom_1 &
fpu_T_2_0_uncom_1 & fpu_T_2_1_uncom_1 & fpu_T_2_2_uncom_1 & fpu_T_2_3_uncom_1 & f_exe_reg_uncom_1 &
f_rrd_uncom_1 & int_issue_slot_0_uncom_1 & int_issue_slot_1_uncom_1 & int_issue_slot_2_uncom_1 & int_issue_slot_3_uncom_1 &
int_issue_slot_4_uncom_1 & int_issue_slot_5_uncom_1 & int_issue_slot_6_uncom_1 & int_issue_slot_7_uncom_1 & int_issue_slot_8_uncom_1 &
int_issue_slot_9_uncom_1 & int_issue_slot_10_uncom_1 & int_issue_slot_11_uncom_1 & int_issue_slot_12_uncom_1 & int_issue_slot_13_uncom_1 &
int_issue_slot_14_uncom_1 & int_issue_slot_15_uncom_1 & int_issue_slot_16_uncom_1 & int_issue_slot_17_uncom_1 & int_issue_slot_18_uncom_1 &
int_issue_slot_19_uncom_1 & mem_issue_slot_0_uncom_1 & mem_issue_slot_1_uncom_1 & mem_issue_slot_2_uncom_1 & mem_issue_slot_3_uncom_1 &
mem_issue_slot_4_uncom_1 & mem_issue_slot_5_uncom_1 & mem_issue_slot_6_uncom_1 & mem_issue_slot_7_uncom_1 & mem_issue_slot_8_uncom_1 &
mem_issue_slot_9_uncom_1 & mem_issue_slot_10_uncom_1 & mem_issue_slot_11_uncom_1 & lsu_ldq_0_uncom_1 & lsu_ldq_1_uncom_1 &
lsu_ldq_2_uncom_1 & lsu_ldq_3_uncom_1 & lsu_ldq_4_uncom_1 & lsu_ldq_5_uncom_1 & lsu_ldq_6_uncom_1 &
lsu_ldq_7_uncom_1 & lsu_ldq_8_uncom_1 & lsu_ldq_9_uncom_1 & lsu_ldq_10_uncom_1 & lsu_ldq_11_uncom_1 &
lsu_ldq_12_uncom_1 & lsu_ldq_13_uncom_1 & lsu_ldq_14_uncom_1 & lsu_ldq_15_uncom_1 & lsu_mem_uncom_1 &
lsu_mem_stq_uncom_1 & lsu_mem_retry_uncom_1 & lsu_mem_xcpt_uncom_1 & lsu_stdf_uncom_1 & lsu_mem_stdf_uncom_1 & lsu_stq_0_uncom_1 &
lsu_stq_1_uncom_1 & lsu_stq_2_uncom_1 & lsu_stq_3_uncom_1 & lsu_stq_4_uncom_1 & lsu_stq_5_uncom_1 &
lsu_stq_6_uncom_1 & lsu_stq_7_uncom_1 & lsu_stq_8_uncom_1 & lsu_stq_9_uncom_1 & lsu_stq_10_uncom_1 &
lsu_stq_11_uncom_1 & lsu_stq_12_uncom_1 & lsu_stq_13_uncom_1 & lsu_stq_14_uncom_1 & lsu_stq_15_uncom_1 &
rob__0_uncom_1 & rob__1_uncom_1 & rob__2_uncom_1 & rob__3_uncom_1 & rob__4_uncom_1 &
rob__5_uncom_1 & rob__6_uncom_1 & rob__7_uncom_1 & rob__8_uncom_1 & rob__9_uncom_1 &
rob__10_uncom_1 & rob__11_uncom_1 & rob__12_uncom_1 & rob__13_uncom_1 & rob__14_uncom_1 &
rob__15_uncom_1 & rob__16_uncom_1 & rob__17_uncom_1 & rob__18_uncom_1 & rob__19_uncom_1 &
rob__20_uncom_1 & rob__21_uncom_1 & rob__22_uncom_1 & rob__23_uncom_1 & rob__24_uncom_1 &
rob__25_uncom_1 & rob__26_uncom_1 & rob__27_uncom_1 & rob__28_uncom_1 & rob__29_uncom_1 &
rob__30_uncom_1 & rob__31_uncom_1 & rob_1_0_uncom_1 & rob_1_1_uncom_1 & rob_1_2_uncom_1 &
rob_1_3_uncom_1 & rob_1_4_uncom_1 & rob_1_5_uncom_1 & rob_1_6_uncom_1 & rob_1_7_uncom_1 &
rob_1_8_uncom_1 & rob_1_9_uncom_1 & rob_1_10_uncom_1 & rob_1_11_uncom_1 & rob_1_12_uncom_1 &
rob_1_13_uncom_1 & rob_1_14_uncom_1 & rob_1_15_uncom_1 & rob_1_16_uncom_1 & rob_1_17_uncom_1 &
rob_1_18_uncom_1 & rob_1_19_uncom_1 & rob_1_20_uncom_1 & rob_1_21_uncom_1 & rob_1_22_uncom_1 &
rob_1_23_uncom_1 & rob_1_24_uncom_1 & rob_1_25_uncom_1 & rob_1_26_uncom_1 & rob_1_27_uncom_1 &
rob_1_28_uncom_1 & rob_1_29_uncom_1 & rob_1_30_uncom_1 & rob_1_31_uncom_1 &
lsu_clr_bsy_brmask_0_uncom_1 &
respq_uops_0_ldq_uncom_1 & respq_uops_1_ldq_uncom_1 & respq_uops_2_ldq_uncom_1 & respq_uops_3_ldq_uncom_1 &
respq_uops_0_stq_uncom_1 & respq_uops_1_stq_uncom_1 & respq_uops_2_stq_uncom_1 & respq_uops_3_stq_uncom_1 &
mmios_0_ldq_uncom_1 & mmios_0_stq_uncom_1 &
mshrs_0_rpq_uops_0_ldq_uncom_1 & mshrs_0_rpq_uops_1_ldq_uncom_1 & mshrs_0_rpq_uops_2_ldq_uncom_1 & mshrs_0_rpq_uops_3_ldq_uncom_1 &
mshrs_0_rpq_uops_4_ldq_uncom_1 & mshrs_0_rpq_uops_5_ldq_uncom_1 & mshrs_0_rpq_uops_6_ldq_uncom_1 & mshrs_0_rpq_uops_7_ldq_uncom_1 &
mshrs_0_rpq_uops_8_ldq_uncom_1 & mshrs_0_rpq_uops_9_ldq_uncom_1 & mshrs_0_rpq_uops_10_ldq_uncom_1 & mshrs_0_rpq_uops_11_ldq_uncom_1 &
mshrs_0_rpq_uops_12_ldq_uncom_1 & mshrs_0_rpq_uops_13_ldq_uncom_1 & mshrs_0_rpq_uops_14_ldq_uncom_1 & mshrs_0_rpq_uops_15_ldq_uncom_1 &
mshrs_0_rpq_uops_0_stq_uncom_1 & mshrs_0_rpq_uops_1_stq_uncom_1 & mshrs_0_rpq_uops_2_stq_uncom_1 & mshrs_0_rpq_uops_3_stq_uncom_1 &
mshrs_0_rpq_uops_4_stq_uncom_1 & mshrs_0_rpq_uops_5_stq_uncom_1 & mshrs_0_rpq_uops_6_stq_uncom_1 & mshrs_0_rpq_uops_7_stq_uncom_1 &
mshrs_0_rpq_uops_8_stq_uncom_1 & mshrs_0_rpq_uops_9_stq_uncom_1 & mshrs_0_rpq_uops_10_stq_uncom_1 & mshrs_0_rpq_uops_11_stq_uncom_1 &
mshrs_0_rpq_uops_12_stq_uncom_1 & mshrs_0_rpq_uops_13_stq_uncom_1 & mshrs_0_rpq_uops_14_stq_uncom_1 & mshrs_0_rpq_uops_15_stq_uncom_1 &
mshrs_1_rpq_uops_0_ldq_uncom_1 & mshrs_1_rpq_uops_1_ldq_uncom_1 & mshrs_1_rpq_uops_2_ldq_uncom_1 & mshrs_1_rpq_uops_3_ldq_uncom_1 &
mshrs_1_rpq_uops_4_ldq_uncom_1 & mshrs_1_rpq_uops_5_ldq_uncom_1 & mshrs_1_rpq_uops_6_ldq_uncom_1 & mshrs_1_rpq_uops_7_ldq_uncom_1 &
mshrs_1_rpq_uops_8_ldq_uncom_1 & mshrs_1_rpq_uops_9_ldq_uncom_1 & mshrs_1_rpq_uops_10_ldq_uncom_1 & mshrs_1_rpq_uops_11_ldq_uncom_1 &
mshrs_1_rpq_uops_12_ldq_uncom_1 & mshrs_1_rpq_uops_13_ldq_uncom_1 & mshrs_1_rpq_uops_14_ldq_uncom_1 & mshrs_1_rpq_uops_15_ldq_uncom_1 &
mshrs_1_rpq_uops_0_stq_uncom_1 & mshrs_1_rpq_uops_1_stq_uncom_1 & mshrs_1_rpq_uops_2_stq_uncom_1 & mshrs_1_rpq_uops_3_stq_uncom_1 &
mshrs_1_rpq_uops_4_stq_uncom_1 & mshrs_1_rpq_uops_5_stq_uncom_1 & mshrs_1_rpq_uops_6_stq_uncom_1 & mshrs_1_rpq_uops_7_stq_uncom_1 &
mshrs_1_rpq_uops_8_stq_uncom_1 & mshrs_1_rpq_uops_9_stq_uncom_1 & mshrs_1_rpq_uops_10_stq_uncom_1 & mshrs_1_rpq_uops_11_stq_uncom_1 &
mshrs_1_rpq_uops_12_stq_uncom_1 & mshrs_1_rpq_uops_13_stq_uncom_1 & mshrs_1_rpq_uops_14_stq_uncom_1 & mshrs_1_rpq_uops_15_stq_uncom_1 &
lsu_r_xcpt_uncom_1 & dcache_s1_req_ldq_uncom_1 & dcache_s1_req_stq_uncom_1 & dcache_s2_req_ldq_uncom_1 & dcache_s2_req_stq_uncom_1;

//OR all committable masks
assign commitable_masks_1 = root_br_mask | alu_T_2_com_1 |
div_r_com_1 | exe_reg_0_com_1 | exe_reg_1_com_1 | exe_reg_2_com_1 | rrd_0_com_1 |
rrd_1_com_1 | rrd_2_com_1 | bkq_0_com_1 | bkq_1_com_1 | bkq_2_com_1 |
bkq_3_com_1 | bkq_4_com_1 | alu_T_2_0_com_1 | alu_T_2_1_com_1 | alu_T_2_2_com_1 |
ifpu_T_2_0_com_1 | ifpu_T_2_1_com_1 | imul_T_2_0_com_1 | imul_T_2_1_com_1 |
imul_T_2_2_com_1 | fp_issue_slot_0_com_1 | fp_issue_slot_1_com_1 | fp_issue_slot_2_com_1 | fp_issue_slot_3_com_1 |
fp_issue_slot_4_com_1 | fp_issue_slot_5_com_1 | fp_issue_slot_6_com_1 | fp_issue_slot_7_com_1 | fp_issue_slot_8_com_1 |
fp_issue_slot_9_com_1 | fp_issue_slot_10_com_1 | fp_issue_slot_11_com_1 | fp_issue_slot_12_com_1 | fp_issue_slot_13_com_1 |
fp_issue_slot_14_com_1 | fp_issue_slot_15_com_1 | fp_bkq_0_com_1 | fp_bkq_1_com_1 | fp_bkq_2_com_1 |
fp_bkq_3_com_1 | fp_bkq_4_com_1 | fp_bkq_5_com_1 | fp_bkq_6_com_1 | fp_bkq_1_0_com_1 |
fp_bkq_1_1_com_1 | fp_bkq_1_2_com_1 | fdiv_buf_com_1 | fdiv_divsqrt_com_1 | fdiv_out_com_1 |
fpu_T_2_0_com_1 | fpu_T_2_1_com_1 | fpu_T_2_2_com_1 | fpu_T_2_3_com_1 | f_exe_reg_com_1 |
f_rrd_com_1 | int_issue_slot_0_com_1 | int_issue_slot_1_com_1 | int_issue_slot_2_com_1 | int_issue_slot_3_com_1 |
int_issue_slot_4_com_1 | int_issue_slot_5_com_1 | int_issue_slot_6_com_1 | int_issue_slot_7_com_1 | int_issue_slot_8_com_1 |
int_issue_slot_9_com_1 | int_issue_slot_10_com_1 | int_issue_slot_11_com_1 | int_issue_slot_12_com_1 | int_issue_slot_13_com_1 |
int_issue_slot_14_com_1 | int_issue_slot_15_com_1 | int_issue_slot_16_com_1 | int_issue_slot_17_com_1 | int_issue_slot_18_com_1 |
int_issue_slot_19_com_1 | mem_issue_slot_0_com_1 | mem_issue_slot_1_com_1 | mem_issue_slot_2_com_1 | mem_issue_slot_3_com_1 |
mem_issue_slot_4_com_1 | mem_issue_slot_5_com_1 | mem_issue_slot_6_com_1 | mem_issue_slot_7_com_1 | mem_issue_slot_8_com_1 |
mem_issue_slot_9_com_1 | mem_issue_slot_10_com_1 | mem_issue_slot_11_com_1 | lsu_ldq_0_com_1 | lsu_ldq_1_com_1 |
lsu_ldq_2_com_1 | lsu_ldq_3_com_1 | lsu_ldq_4_com_1 | lsu_ldq_5_com_1 | lsu_ldq_6_com_1 |
lsu_ldq_7_com_1 | lsu_ldq_8_com_1 | lsu_ldq_9_com_1 | lsu_ldq_10_com_1 | lsu_ldq_11_com_1 |
lsu_ldq_12_com_1 | lsu_ldq_13_com_1 | lsu_ldq_14_com_1 | lsu_ldq_15_com_1 | lsu_mem_com_1 |
lsu_mem_stq_com_1 | lsu_mem_retry_com_1 | lsu_mem_xcpt_com_1 | lsu_stdf_com_1 | lsu_mem_stdf_com_1 | lsu_stq_0_com_1 |
lsu_stq_1_com_1 | lsu_stq_2_com_1 | lsu_stq_3_com_1 | lsu_stq_4_com_1 | lsu_stq_5_com_1 |
lsu_stq_6_com_1 | lsu_stq_7_com_1 | lsu_stq_8_com_1 | lsu_stq_9_com_1 | lsu_stq_10_com_1 |
lsu_stq_11_com_1 | lsu_stq_12_com_1 | lsu_stq_13_com_1 | lsu_stq_14_com_1 | lsu_stq_15_com_1 |
rob__0_com_1 | rob__1_com_1 | rob__2_com_1 | rob__3_com_1 | rob__4_com_1 |
rob__5_com_1 | rob__6_com_1 | rob__7_com_1 | rob__8_com_1 | rob__9_com_1 |
rob__10_com_1 | rob__11_com_1 | rob__12_com_1 | rob__13_com_1 | rob__14_com_1 |
rob__15_com_1 | rob__16_com_1 | rob__17_com_1 | rob__18_com_1 | rob__19_com_1 |
rob__20_com_1 | rob__21_com_1 | rob__22_com_1 | rob__23_com_1 | rob__24_com_1 |
rob__25_com_1 | rob__26_com_1 | rob__27_com_1 | rob__28_com_1 | rob__29_com_1 |
rob__30_com_1 | rob__31_com_1 | rob_1_0_com_1 | rob_1_1_com_1 | rob_1_2_com_1 |
rob_1_3_com_1 | rob_1_4_com_1 | rob_1_5_com_1 | rob_1_6_com_1 | rob_1_7_com_1 |
rob_1_8_com_1 | rob_1_9_com_1 | rob_1_10_com_1 | rob_1_11_com_1 | rob_1_12_com_1 |
rob_1_13_com_1 | rob_1_14_com_1 | rob_1_15_com_1 | rob_1_16_com_1 | rob_1_17_com_1 |
rob_1_18_com_1 | rob_1_19_com_1 | rob_1_20_com_1 | rob_1_21_com_1 | rob_1_22_com_1 |
rob_1_23_com_1 | rob_1_24_com_1 | rob_1_25_com_1 | rob_1_26_com_1 | rob_1_27_com_1 |
rob_1_28_com_1 | rob_1_29_com_1 | rob_1_30_com_1 | rob_1_31_com_1 |
lsu_clr_bsy_brmask_0_com_1 |
respq_uops_0_ldq_com_1 | respq_uops_1_ldq_com_1 | respq_uops_2_ldq_com_1 | respq_uops_3_ldq_com_1 |
respq_uops_0_stq_com_1 | respq_uops_1_stq_com_1 | respq_uops_2_stq_com_1 | respq_uops_3_stq_com_1 |
mmios_0_ldq_com_1 | mmios_0_stq_com_1 |
mmios_0_ldq_com_1 | mmios_0_stq_com_1 |
mshrs_0_rpq_uops_0_ldq_com_1 | mshrs_0_rpq_uops_1_ldq_com_1 | mshrs_0_rpq_uops_2_ldq_com_1 | mshrs_0_rpq_uops_3_ldq_com_1 |
mshrs_0_rpq_uops_4_ldq_com_1 | mshrs_0_rpq_uops_5_ldq_com_1 | mshrs_0_rpq_uops_6_ldq_com_1 | mshrs_0_rpq_uops_7_ldq_com_1 |
mshrs_0_rpq_uops_8_ldq_com_1 | mshrs_0_rpq_uops_9_ldq_com_1 | mshrs_0_rpq_uops_10_ldq_com_1 | mshrs_0_rpq_uops_11_ldq_com_1 |
mshrs_0_rpq_uops_12_ldq_com_1 | mshrs_0_rpq_uops_13_ldq_com_1 | mshrs_0_rpq_uops_14_ldq_com_1 | mshrs_0_rpq_uops_15_ldq_com_1 |
mshrs_0_rpq_uops_0_stq_com_1 | mshrs_0_rpq_uops_1_stq_com_1 | mshrs_0_rpq_uops_2_stq_com_1 | mshrs_0_rpq_uops_3_stq_com_1 |
mshrs_0_rpq_uops_4_stq_com_1 | mshrs_0_rpq_uops_5_stq_com_1 | mshrs_0_rpq_uops_6_stq_com_1 | mshrs_0_rpq_uops_7_stq_com_1 |
mshrs_0_rpq_uops_8_stq_com_1 | mshrs_0_rpq_uops_9_stq_com_1 | mshrs_0_rpq_uops_10_stq_com_1 | mshrs_0_rpq_uops_11_stq_com_1 |
mshrs_0_rpq_uops_12_stq_com_1 | mshrs_0_rpq_uops_13_stq_com_1 | mshrs_0_rpq_uops_14_stq_com_1 | mshrs_0_rpq_uops_15_stq_com_1 |
mshrs_1_rpq_uops_0_ldq_com_1 | mshrs_1_rpq_uops_1_ldq_com_1 | mshrs_1_rpq_uops_2_ldq_com_1 | mshrs_1_rpq_uops_3_ldq_com_1 |
mshrs_1_rpq_uops_4_ldq_com_1 | mshrs_1_rpq_uops_5_ldq_com_1 | mshrs_1_rpq_uops_6_ldq_com_1 | mshrs_1_rpq_uops_7_ldq_com_1 |
mshrs_1_rpq_uops_8_ldq_com_1 | mshrs_1_rpq_uops_9_ldq_com_1 | mshrs_1_rpq_uops_10_ldq_com_1 | mshrs_1_rpq_uops_11_ldq_com_1 |
mshrs_1_rpq_uops_12_ldq_com_1 | mshrs_1_rpq_uops_13_ldq_com_1 | mshrs_1_rpq_uops_14_ldq_com_1 | mshrs_1_rpq_uops_15_ldq_com_1 |
mshrs_1_rpq_uops_0_stq_com_1 | mshrs_1_rpq_uops_1_stq_com_1 | mshrs_1_rpq_uops_2_stq_com_1 | mshrs_1_rpq_uops_3_stq_com_1 |
mshrs_1_rpq_uops_4_stq_com_1 | mshrs_1_rpq_uops_5_stq_com_1 | mshrs_1_rpq_uops_6_stq_com_1 | mshrs_1_rpq_uops_7_stq_com_1 |
mshrs_1_rpq_uops_8_stq_com_1 | mshrs_1_rpq_uops_9_stq_com_1 | mshrs_1_rpq_uops_10_stq_com_1 | mshrs_1_rpq_uops_11_stq_com_1 |
mshrs_1_rpq_uops_12_stq_com_1 | mshrs_1_rpq_uops_13_stq_com_1 | mshrs_1_rpq_uops_14_stq_com_1 | mshrs_1_rpq_uops_15_stq_com_1 |
lsu_r_xcpt_com_1 | dcache_s1_req_ldq_com_1 | dcache_s1_req_stq_com_1 | dcache_s2_req_ldq_com_1 | dcache_s2_req_stq_com_1;


//***************************************//
//write one combinational process for both ME-5 and ME-6
//for every ROB slot or bookkeeping buffer:
//check if stored ROB ID is committable
//store branch mask in corresponding variable
//set the other variable to default value (12'hfff for uncommitable tags, 12'h0 for committable tags)

//Soc2
//

  wire [11:0] alu_T_2_com_2;
  wire [11:0] alu_T_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.csr_exe_unit.alu._T_2_0_rob_idx))
    begin
      alu_T_2_com_2 = soc2.core.csr_exe_unit.alu._T_2_0_br_mask;
      alu_T_2_uncom_2 = 12'hfff;
    end
    else
    begin
      alu_T_2_com_2 = 12'h0;
      alu_T_2_uncom_2 = soc2.core.csr_exe_unit.alu._T_2_0_br_mask;
    end
  end

  wire [11:0] div_r_com_2;
  wire [11:0] div_r_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.csr_exe_unit.div.r_uop_rob_idx))
    begin
      div_r_com_2 = soc2.core.csr_exe_unit.div.r_uop_br_mask;
      div_r_uncom_2 = 12'hfff;
    end
    else
    begin
      div_r_com_2 = 12'h0;
      div_r_uncom_2 = soc2.core.csr_exe_unit.div.r_uop_br_mask;
    end
  end

  wire [11:0] exe_reg_0_com_2;
  wire [11:0] exe_reg_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.exe_reg_uops_0_rob_idx))
    begin
      exe_reg_0_com_2 = soc2.core.iregister_read.exe_reg_uops_0_br_mask;
      exe_reg_0_uncom_2 = 12'hfff;
    end
    else
    begin
      exe_reg_0_com_2 = 12'h0;
      exe_reg_0_uncom_2 = soc2.core.iregister_read.exe_reg_uops_0_br_mask;
    end
  end

  wire [11:0] exe_reg_1_com_2;
  wire [11:0] exe_reg_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.exe_reg_uops_1_rob_idx))
    begin
      exe_reg_1_com_2 = soc2.core.iregister_read.exe_reg_uops_1_br_mask;
      exe_reg_1_uncom_2 = 12'hfff;
    end
    else
    begin
      exe_reg_1_com_2 = 12'h0;
      exe_reg_1_uncom_2 = soc2.core.iregister_read.exe_reg_uops_1_br_mask;
    end
  end

  wire [11:0] exe_reg_2_com_2;
  wire [11:0] exe_reg_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.exe_reg_uops_2_rob_idx))
    begin
      exe_reg_2_com_2 = soc2.core.iregister_read.exe_reg_uops_2_br_mask;
      exe_reg_2_uncom_2 = 12'hfff;
    end
    else
    begin
      exe_reg_2_com_2 = 12'h0;
      exe_reg_2_uncom_2 = soc2.core.iregister_read.exe_reg_uops_2_br_mask;
    end
  end

  wire [11:0] rrd_0_com_2;
  wire [11:0] rrd_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.rrd_uops_0_rob_idx))
    begin
      rrd_0_com_2 = soc2.core.iregister_read.rrd_uops_0_br_mask;
      rrd_0_uncom_2 = 12'hfff;
    end
    else
    begin
      rrd_0_com_2 = 12'h0;
      rrd_0_uncom_2 = soc2.core.iregister_read.rrd_uops_0_br_mask;
    end
  end

  wire [11:0] rrd_1_com_2;
  wire [11:0] rrd_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.rrd_uops_1_rob_idx))
    begin
      rrd_1_com_2 = soc2.core.iregister_read.rrd_uops_1_br_mask;
      rrd_1_uncom_2 = 12'hfff;
    end
    else
    begin
      rrd_1_com_2 = 12'h0;
      rrd_1_uncom_2 = soc2.core.iregister_read.rrd_uops_1_br_mask;
    end
  end

  wire [11:0] rrd_2_com_2;
  wire [11:0] rrd_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.iregister_read.rrd_uops_2_rob_idx))
    begin
      rrd_2_com_2 = soc2.core.iregister_read.rrd_uops_2_br_mask;
      rrd_2_uncom_2 = 12'hfff;
    end
    else
    begin
      rrd_2_com_2 = 12'h0;
      rrd_2_uncom_2 = soc2.core.iregister_read.rrd_uops_2_br_mask;
    end
  end

  wire [11:0] bkq_0_com_2;
  wire [11:0] bkq_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.BranchKillableQueue.uops_0_rob_idx))
    begin
      bkq_0_com_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_0_br_mask;
      bkq_0_uncom_2 = 12'hfff;
    end
    else
    begin
      bkq_0_com_2 = 12'h0;
      bkq_0_uncom_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_0_br_mask;
    end
  end

  wire [11:0] bkq_1_com_2;
  wire [11:0] bkq_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.BranchKillableQueue.uops_1_rob_idx))
    begin
      bkq_1_com_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_1_br_mask;
      bkq_1_uncom_2 = 12'hfff;
    end
    else
    begin
      bkq_1_com_2 = 12'h0;
      bkq_1_uncom_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_1_br_mask;
    end
  end

  wire [11:0] bkq_2_com_2;
  wire [11:0] bkq_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.BranchKillableQueue.uops_2_rob_idx))
    begin
      bkq_2_com_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_2_br_mask;
      bkq_2_uncom_2 = 12'hfff;
    end
    else
    begin
      bkq_2_com_2 = 12'h0;
      bkq_2_uncom_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_2_br_mask;
    end
  end

  wire [11:0] bkq_3_com_2;
  wire [11:0] bkq_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.BranchKillableQueue.uops_3_rob_idx))
    begin
      bkq_3_com_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_3_br_mask;
      bkq_3_uncom_2 = 12'hfff;
    end
    else
    begin
      bkq_3_com_2 = 12'h0;
      bkq_3_uncom_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_3_br_mask;
    end
  end

  wire [11:0] bkq_4_com_2;
  wire [11:0] bkq_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.BranchKillableQueue.uops_4_rob_idx))
    begin
      bkq_4_com_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_4_br_mask;
      bkq_4_uncom_2 = 12'hfff;
    end
    else
    begin
      bkq_4_com_2 = 12'h0;
      bkq_4_uncom_2 = soc2.core.jmp_unit.BranchKillableQueue.uops_4_br_mask;
    end
  end

  wire [11:0] alu_T_2_0_com_2;
  wire [11:0] alu_T_2_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.alu._T_2_0_rob_idx))
    begin
      alu_T_2_0_com_2 = soc2.core.jmp_unit.alu._T_2_0_br_mask;
      alu_T_2_0_uncom_2 = 12'hfff;
    end
    else
    begin
      alu_T_2_0_com_2 = 12'h0;
      alu_T_2_0_uncom_2 = soc2.core.jmp_unit.alu._T_2_0_br_mask;
    end
  end

  wire [11:0] alu_T_2_1_com_2;
  wire [11:0] alu_T_2_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.alu._T_2_1_rob_idx))
    begin
      alu_T_2_1_com_2 = soc2.core.jmp_unit.alu._T_2_1_br_mask;
      alu_T_2_1_uncom_2 = 12'hfff;
    end
    else
    begin
      alu_T_2_1_com_2 = 12'h0;
      alu_T_2_1_uncom_2 = soc2.core.jmp_unit.alu._T_2_1_br_mask;
    end
  end

  wire [11:0] alu_T_2_2_com_2;
  wire [11:0] alu_T_2_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.alu._T_2_2_rob_idx))
    begin
      alu_T_2_2_com_2 = soc2.core.jmp_unit.alu._T_2_2_br_mask;
      alu_T_2_2_uncom_2 = 12'hfff;
    end
    else
    begin
      alu_T_2_2_com_2 = 12'h0;
      alu_T_2_2_uncom_2 = soc2.core.jmp_unit.alu._T_2_2_br_mask;
    end
  end

  wire [11:0] ifpu_T_2_0_com_2;
  wire [11:0] ifpu_T_2_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.ifpu._T_2_0_rob_idx))
    begin
      ifpu_T_2_0_com_2 = soc2.core.jmp_unit.ifpu._T_2_0_br_mask;
      ifpu_T_2_0_uncom_2 = 12'hfff;
    end
    else
    begin
      ifpu_T_2_0_com_2 = 12'h0;
      ifpu_T_2_0_uncom_2 = soc2.core.jmp_unit.ifpu._T_2_0_br_mask;
    end
  end

  wire [11:0] ifpu_T_2_1_com_2;
  wire [11:0] ifpu_T_2_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.ifpu._T_2_1_rob_idx))
    begin
      ifpu_T_2_1_com_2 = soc2.core.jmp_unit.ifpu._T_2_1_br_mask;
      ifpu_T_2_1_uncom_2 = 12'hfff;
    end
    else
    begin
      ifpu_T_2_1_com_2 = 12'h0;
      ifpu_T_2_1_uncom_2 = soc2.core.jmp_unit.ifpu._T_2_1_br_mask;
    end
  end



  wire [11:0] imul_T_2_0_com_2;
  wire [11:0] imul_T_2_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.imul._T_2_0_rob_idx))
    begin
      imul_T_2_0_com_2 = soc2.core.jmp_unit.imul._T_2_0_br_mask;
      imul_T_2_0_uncom_2 = 12'hfff;
    end
    else
    begin
      imul_T_2_0_com_2 = 12'h0;
      imul_T_2_0_uncom_2 = soc2.core.jmp_unit.imul._T_2_0_br_mask;
    end
  end

  wire [11:0] imul_T_2_1_com_2;
  wire [11:0] imul_T_2_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.imul._T_2_1_rob_idx))
    begin
      imul_T_2_1_com_2 = soc2.core.jmp_unit.imul._T_2_1_br_mask;
      imul_T_2_1_uncom_2 = 12'hfff;
    end
    else
    begin
      imul_T_2_1_com_2 = 12'h0;
      imul_T_2_1_uncom_2 = soc2.core.jmp_unit.imul._T_2_1_br_mask;
    end
  end

  wire [11:0] imul_T_2_2_com_2;
  wire [11:0] imul_T_2_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.jmp_unit.imul._T_2_2_rob_idx))
    begin
      imul_T_2_2_com_2 = soc2.core.jmp_unit.imul._T_2_2_br_mask;
      imul_T_2_2_uncom_2 = 12'hfff;
    end
    else
    begin
      imul_T_2_2_com_2 = 12'h0;
      imul_T_2_2_uncom_2 = soc2.core.jmp_unit.imul._T_2_2_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_0_com_2;
  wire [11:0] fp_issue_slot_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      fp_issue_slot_0_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_br_mask;
      fp_issue_slot_0_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_0_com_2 = 12'h0;
      fp_issue_slot_0_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_1_com_2;
  wire [11:0] fp_issue_slot_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      fp_issue_slot_1_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_br_mask;
      fp_issue_slot_1_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_1_com_2 = 12'h0;
      fp_issue_slot_1_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_2_com_2;
  wire [11:0] fp_issue_slot_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      fp_issue_slot_2_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_br_mask;
      fp_issue_slot_2_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_2_com_2 = 12'h0;
      fp_issue_slot_2_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_3_com_2;
  wire [11:0] fp_issue_slot_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      fp_issue_slot_3_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_br_mask;
      fp_issue_slot_3_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_3_com_2 = 12'h0;
      fp_issue_slot_3_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_4_com_2;
  wire [11:0] fp_issue_slot_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      fp_issue_slot_4_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_br_mask;
      fp_issue_slot_4_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_4_com_2 = 12'h0;
      fp_issue_slot_4_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_5_com_2;
  wire [11:0] fp_issue_slot_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      fp_issue_slot_5_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_br_mask;
      fp_issue_slot_5_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_5_com_2 = 12'h0;
      fp_issue_slot_5_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_6_com_2;
  wire [11:0] fp_issue_slot_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      fp_issue_slot_6_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_br_mask;
      fp_issue_slot_6_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_6_com_2 = 12'h0;
      fp_issue_slot_6_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_7_com_2;
  wire [11:0] fp_issue_slot_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      fp_issue_slot_7_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_br_mask;
      fp_issue_slot_7_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_7_com_2 = 12'h0;
      fp_issue_slot_7_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_8_com_2;
  wire [11:0] fp_issue_slot_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      fp_issue_slot_8_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_br_mask;
      fp_issue_slot_8_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_8_com_2 = 12'h0;
      fp_issue_slot_8_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_9_com_2;
  wire [11:0] fp_issue_slot_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      fp_issue_slot_9_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_br_mask;
      fp_issue_slot_9_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_9_com_2 = 12'h0;
      fp_issue_slot_9_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_10_com_2;
  wire [11:0] fp_issue_slot_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      fp_issue_slot_10_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_br_mask;
      fp_issue_slot_10_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_10_com_2 = 12'h0;
      fp_issue_slot_10_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_11_com_2;
  wire [11:0] fp_issue_slot_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      fp_issue_slot_11_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_br_mask;
      fp_issue_slot_11_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_11_com_2 = 12'h0;
      fp_issue_slot_11_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_12_com_2;
  wire [11:0] fp_issue_slot_12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_rob_idx))
    begin
      fp_issue_slot_12_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_br_mask;
      fp_issue_slot_12_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_12_com_2 = 12'h0;
      fp_issue_slot_12_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_12.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_13_com_2;
  wire [11:0] fp_issue_slot_13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_rob_idx))
    begin
      fp_issue_slot_13_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_br_mask;
      fp_issue_slot_13_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_13_com_2 = 12'h0;
      fp_issue_slot_13_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_13.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_14_com_2;
  wire [11:0] fp_issue_slot_14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_rob_idx))
    begin
      fp_issue_slot_14_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_br_mask;
      fp_issue_slot_14_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_14_com_2 = 12'h0;
      fp_issue_slot_14_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_14.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_issue_slot_15_com_2;
  wire [11:0] fp_issue_slot_15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_rob_idx))
    begin
      fp_issue_slot_15_com_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_br_mask;
      fp_issue_slot_15_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_issue_slot_15_com_2 = 12'h0;
      fp_issue_slot_15_uncom_2 = soc2.core.fp_pipeline.fp_issue_unit.slots_15.slot_uop_br_mask;
    end
  end

  wire [11:0] fp_bkq_0_com_2;
  wire [11:0] fp_bkq_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_rob_idx))
    begin
      fp_bkq_0_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_br_mask;
      fp_bkq_0_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_0_com_2 = 12'h0;
      fp_bkq_0_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_0_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_com_2;
  wire [11:0] fp_bkq_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_rob_idx))
    begin
      fp_bkq_1_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_br_mask;
      fp_bkq_1_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_com_2 = 12'h0;
      fp_bkq_1_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_1_br_mask;
    end
  end

  wire [11:0] fp_bkq_2_com_2;
  wire [11:0] fp_bkq_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_rob_idx))
    begin
      fp_bkq_2_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_br_mask;
      fp_bkq_2_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_2_com_2 = 12'h0;
      fp_bkq_2_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_2_br_mask;
    end
  end

  wire [11:0] fp_bkq_3_com_2;
  wire [11:0] fp_bkq_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_rob_idx))
    begin
      fp_bkq_3_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_br_mask;
      fp_bkq_3_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_3_com_2 = 12'h0;
      fp_bkq_3_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_3_br_mask;
    end
  end

  wire [11:0] fp_bkq_4_com_2;
  wire [11:0] fp_bkq_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_rob_idx))
    begin
      fp_bkq_4_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_br_mask;
      fp_bkq_4_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_4_com_2 = 12'h0;
      fp_bkq_4_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_4_br_mask;
    end
  end

  wire [11:0] fp_bkq_5_com_2;
  wire [11:0] fp_bkq_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_rob_idx))
    begin
      fp_bkq_5_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_br_mask;
      fp_bkq_5_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_5_com_2 = 12'h0;
      fp_bkq_5_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_5_br_mask;
    end
  end

  wire [11:0] fp_bkq_6_com_2;
  wire [11:0] fp_bkq_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_rob_idx))
    begin
      fp_bkq_6_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_br_mask;
      fp_bkq_6_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_6_com_2 = 12'h0;
      fp_bkq_6_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue.uops_6_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_0_com_2;
  wire [11:0] fp_bkq_1_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_rob_idx))
    begin
      fp_bkq_1_0_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_br_mask;
      fp_bkq_1_0_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_0_com_2 = 12'h0;
      fp_bkq_1_0_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_0_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_1_com_2;
  wire [11:0] fp_bkq_1_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_rob_idx))
    begin
      fp_bkq_1_1_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_br_mask;
      fp_bkq_1_1_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_1_com_2 = 12'h0;
      fp_bkq_1_1_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_1_br_mask;
    end
  end

  wire [11:0] fp_bkq_1_2_com_2;
  wire [11:0] fp_bkq_1_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_rob_idx))
    begin
      fp_bkq_1_2_com_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_br_mask;
      fp_bkq_1_2_uncom_2 = 12'hfff;
    end
    else
    begin
      fp_bkq_1_2_com_2 = 12'h0;
      fp_bkq_1_2_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.BranchKillableQueue_1.uops_2_br_mask;
    end
  end

  wire [11:0] fdiv_buf_com_2;
  wire [11:0] fdiv_buf_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_rob_idx))
    begin
      fdiv_buf_com_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_br_mask;
      fdiv_buf_uncom_2 = 12'hfff;
    end
    else
    begin
      fdiv_buf_com_2 = 12'h0;
      fdiv_buf_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_buffer_req_uop_br_mask;
    end
  end

  wire [11:0] fdiv_divsqrt_com_2;
  wire [11:0] fdiv_divsqrt_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_rob_idx))
    begin
      fdiv_divsqrt_com_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_br_mask;
      fdiv_divsqrt_uncom_2 = 12'hfff;
    end
    else
    begin
      fdiv_divsqrt_com_2 = 12'h0;
      fdiv_divsqrt_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_divsqrt_uop_br_mask;
    end
  end

  wire [11:0] fdiv_out_com_2;
  wire [11:0] fdiv_out_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_rob_idx))
    begin
      fdiv_out_com_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_br_mask;
      fdiv_out_uncom_2 = 12'hfff;
    end
    else
    begin
      fdiv_out_com_2 = 12'h0;
      fdiv_out_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fdivsqrt.r_out_uop_br_mask;
    end
  end

  wire [11:0] fpu_T_2_0_com_2;
  wire [11:0] fpu_T_2_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_0_rob_idx))
    begin
      fpu_T_2_0_com_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_0_br_mask;
      fpu_T_2_0_uncom_2 = 12'hfff;
    end
    else
    begin
      fpu_T_2_0_com_2 = 12'h0;
      fpu_T_2_0_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_0_br_mask;
    end
  end

  wire [11:0] fpu_T_2_1_com_2;
  wire [11:0] fpu_T_2_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_1_rob_idx))
    begin
      fpu_T_2_1_com_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_1_br_mask;
      fpu_T_2_1_uncom_2 = 12'hfff;
    end
    else
    begin
      fpu_T_2_1_com_2 = 12'h0;
      fpu_T_2_1_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_1_br_mask;
    end
  end

  wire [11:0] fpu_T_2_2_com_2;
  wire [11:0] fpu_T_2_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_2_rob_idx))
    begin
      fpu_T_2_2_com_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_2_br_mask;
      fpu_T_2_2_uncom_2 = 12'hfff;
    end
    else
    begin
      fpu_T_2_2_com_2 = 12'h0;
      fpu_T_2_2_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_2_br_mask;
    end
  end

  wire [11:0] fpu_T_2_3_com_2;
  wire [11:0] fpu_T_2_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_3_rob_idx))
    begin
      fpu_T_2_3_com_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_3_br_mask;
      fpu_T_2_3_uncom_2 = 12'hfff;
    end
    else
    begin
      fpu_T_2_3_com_2 = 12'h0;
      fpu_T_2_3_uncom_2 = soc2.core.fp_pipeline.fpiu_unit.fpu._T_2_3_br_mask;
    end
  end

  wire [11:0] f_exe_reg_com_2;
  wire [11:0] f_exe_reg_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fregister_read.exe_reg_uops_0_rob_idx))
    begin
      f_exe_reg_com_2 = soc2.core.fp_pipeline.fregister_read.exe_reg_uops_0_br_mask;
      f_exe_reg_uncom_2 = 12'hfff;
    end
    else
    begin
      f_exe_reg_com_2 = 12'h0;
      f_exe_reg_uncom_2 = soc2.core.fp_pipeline.fregister_read.exe_reg_uops_0_br_mask;
    end
  end

  wire [11:0] f_rrd_com_2;
  wire [11:0] f_rrd_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.fp_pipeline.fregister_read.rrd_uops_0_rob_idx))
    begin
      f_rrd_com_2 = soc2.core.fp_pipeline.fregister_read.rrd_uops_0_br_mask;
      f_rrd_uncom_2 = 12'hfff;
    end
    else
    begin
      f_rrd_com_2 = 12'h0;
      f_rrd_uncom_2 = soc2.core.fp_pipeline.fregister_read.rrd_uops_0_br_mask;
    end
  end

  wire [11:0] int_issue_slot_0_com_2;
  wire [11:0] int_issue_slot_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      int_issue_slot_0_com_2 = soc2.core.int_issue_unit.slots_0.slot_uop_br_mask;
      int_issue_slot_0_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_0_com_2 = 12'h0;
      int_issue_slot_0_uncom_2 = soc2.core.int_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_1_com_2;
  wire [11:0] int_issue_slot_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      int_issue_slot_1_com_2 = soc2.core.int_issue_unit.slots_1.slot_uop_br_mask;
      int_issue_slot_1_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_1_com_2 = 12'h0;
      int_issue_slot_1_uncom_2 = soc2.core.int_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_2_com_2;
  wire [11:0] int_issue_slot_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      int_issue_slot_2_com_2 = soc2.core.int_issue_unit.slots_2.slot_uop_br_mask;
      int_issue_slot_2_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_2_com_2 = 12'h0;
      int_issue_slot_2_uncom_2 = soc2.core.int_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_3_com_2;
  wire [11:0] int_issue_slot_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      int_issue_slot_3_com_2 = soc2.core.int_issue_unit.slots_3.slot_uop_br_mask;
      int_issue_slot_3_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_3_com_2 = 12'h0;
      int_issue_slot_3_uncom_2 = soc2.core.int_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_4_com_2;
  wire [11:0] int_issue_slot_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      int_issue_slot_4_com_2 = soc2.core.int_issue_unit.slots_4.slot_uop_br_mask;
      int_issue_slot_4_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_4_com_2 = 12'h0;
      int_issue_slot_4_uncom_2 = soc2.core.int_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_5_com_2;
  wire [11:0] int_issue_slot_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      int_issue_slot_5_com_2 = soc2.core.int_issue_unit.slots_5.slot_uop_br_mask;
      int_issue_slot_5_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_5_com_2 = 12'h0;
      int_issue_slot_5_uncom_2 = soc2.core.int_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_6_com_2;
  wire [11:0] int_issue_slot_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      int_issue_slot_6_com_2 = soc2.core.int_issue_unit.slots_6.slot_uop_br_mask;
      int_issue_slot_6_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_6_com_2 = 12'h0;
      int_issue_slot_6_uncom_2 = soc2.core.int_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_7_com_2;
  wire [11:0] int_issue_slot_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      int_issue_slot_7_com_2 = soc2.core.int_issue_unit.slots_7.slot_uop_br_mask;
      int_issue_slot_7_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_7_com_2 = 12'h0;
      int_issue_slot_7_uncom_2 = soc2.core.int_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_8_com_2;
  wire [11:0] int_issue_slot_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      int_issue_slot_8_com_2 = soc2.core.int_issue_unit.slots_8.slot_uop_br_mask;
      int_issue_slot_8_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_8_com_2 = 12'h0;
      int_issue_slot_8_uncom_2 = soc2.core.int_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_9_com_2;
  wire [11:0] int_issue_slot_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      int_issue_slot_9_com_2 = soc2.core.int_issue_unit.slots_9.slot_uop_br_mask;
      int_issue_slot_9_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_9_com_2 = 12'h0;
      int_issue_slot_9_uncom_2 = soc2.core.int_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_10_com_2;
  wire [11:0] int_issue_slot_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      int_issue_slot_10_com_2 = soc2.core.int_issue_unit.slots_10.slot_uop_br_mask;
      int_issue_slot_10_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_10_com_2 = 12'h0;
      int_issue_slot_10_uncom_2 = soc2.core.int_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_11_com_2;
  wire [11:0] int_issue_slot_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      int_issue_slot_11_com_2 = soc2.core.int_issue_unit.slots_11.slot_uop_br_mask;
      int_issue_slot_11_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_11_com_2 = 12'h0;
      int_issue_slot_11_uncom_2 = soc2.core.int_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_12_com_2;
  wire [11:0] int_issue_slot_12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_12.slot_uop_rob_idx))
    begin
      int_issue_slot_12_com_2 = soc2.core.int_issue_unit.slots_12.slot_uop_br_mask;
      int_issue_slot_12_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_12_com_2 = 12'h0;
      int_issue_slot_12_uncom_2 = soc2.core.int_issue_unit.slots_12.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_13_com_2;
  wire [11:0] int_issue_slot_13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_13.slot_uop_rob_idx))
    begin
      int_issue_slot_13_com_2 = soc2.core.int_issue_unit.slots_13.slot_uop_br_mask;
      int_issue_slot_13_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_13_com_2 = 12'h0;
      int_issue_slot_13_uncom_2 = soc2.core.int_issue_unit.slots_13.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_14_com_2;
  wire [11:0] int_issue_slot_14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_14.slot_uop_rob_idx))
    begin
      int_issue_slot_14_com_2 = soc2.core.int_issue_unit.slots_14.slot_uop_br_mask;
      int_issue_slot_14_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_14_com_2 = 12'h0;
      int_issue_slot_14_uncom_2 = soc2.core.int_issue_unit.slots_14.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_15_com_2;
  wire [11:0] int_issue_slot_15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_15.slot_uop_rob_idx))
    begin
      int_issue_slot_15_com_2 = soc2.core.int_issue_unit.slots_15.slot_uop_br_mask;
      int_issue_slot_15_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_15_com_2 = 12'h0;
      int_issue_slot_15_uncom_2 = soc2.core.int_issue_unit.slots_15.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_16_com_2;
  wire [11:0] int_issue_slot_16_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_16.slot_uop_rob_idx))
    begin
      int_issue_slot_16_com_2 = soc2.core.int_issue_unit.slots_16.slot_uop_br_mask;
      int_issue_slot_16_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_16_com_2 = 12'h0;
      int_issue_slot_16_uncom_2 = soc2.core.int_issue_unit.slots_16.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_17_com_2;
  wire [11:0] int_issue_slot_17_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_17.slot_uop_rob_idx))
    begin
      int_issue_slot_17_com_2 = soc2.core.int_issue_unit.slots_17.slot_uop_br_mask;
      int_issue_slot_17_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_17_com_2 = 12'h0;
      int_issue_slot_17_uncom_2 = soc2.core.int_issue_unit.slots_17.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_18_com_2;
  wire [11:0] int_issue_slot_18_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_18.slot_uop_rob_idx))
    begin
      int_issue_slot_18_com_2 = soc2.core.int_issue_unit.slots_18.slot_uop_br_mask;
      int_issue_slot_18_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_18_com_2 = 12'h0;
      int_issue_slot_18_uncom_2 = soc2.core.int_issue_unit.slots_18.slot_uop_br_mask;
    end
  end

  wire [11:0] int_issue_slot_19_com_2;
  wire [11:0] int_issue_slot_19_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.int_issue_unit.slots_19.slot_uop_rob_idx))
    begin
      int_issue_slot_19_com_2 = soc2.core.int_issue_unit.slots_19.slot_uop_br_mask;
      int_issue_slot_19_uncom_2 = 12'hfff;
    end
    else
    begin
      int_issue_slot_19_com_2 = 12'h0;
      int_issue_slot_19_uncom_2 = soc2.core.int_issue_unit.slots_19.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_0_com_2;
  wire [11:0] mem_issue_slot_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_0.slot_uop_rob_idx))
    begin
      mem_issue_slot_0_com_2 = soc2.core.mem_issue_unit.slots_0.slot_uop_br_mask;
      mem_issue_slot_0_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_0_com_2 = 12'h0;
      mem_issue_slot_0_uncom_2 = soc2.core.mem_issue_unit.slots_0.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_1_com_2;
  wire [11:0] mem_issue_slot_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_1.slot_uop_rob_idx))
    begin
      mem_issue_slot_1_com_2 = soc2.core.mem_issue_unit.slots_1.slot_uop_br_mask;
      mem_issue_slot_1_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_1_com_2 = 12'h0;
      mem_issue_slot_1_uncom_2 = soc2.core.mem_issue_unit.slots_1.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_2_com_2;
  wire [11:0] mem_issue_slot_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_2.slot_uop_rob_idx))
    begin
      mem_issue_slot_2_com_2 = soc2.core.mem_issue_unit.slots_2.slot_uop_br_mask;
      mem_issue_slot_2_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_2_com_2 = 12'h0;
      mem_issue_slot_2_uncom_2 = soc2.core.mem_issue_unit.slots_2.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_3_com_2;
  wire [11:0] mem_issue_slot_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_3.slot_uop_rob_idx))
    begin
      mem_issue_slot_3_com_2 = soc2.core.mem_issue_unit.slots_3.slot_uop_br_mask;
      mem_issue_slot_3_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_3_com_2 = 12'h0;
      mem_issue_slot_3_uncom_2 = soc2.core.mem_issue_unit.slots_3.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_4_com_2;
  wire [11:0] mem_issue_slot_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_4.slot_uop_rob_idx))
    begin
      mem_issue_slot_4_com_2 = soc2.core.mem_issue_unit.slots_4.slot_uop_br_mask;
      mem_issue_slot_4_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_4_com_2 = 12'h0;
      mem_issue_slot_4_uncom_2 = soc2.core.mem_issue_unit.slots_4.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_5_com_2;
  wire [11:0] mem_issue_slot_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_5.slot_uop_rob_idx))
    begin
      mem_issue_slot_5_com_2 = soc2.core.mem_issue_unit.slots_5.slot_uop_br_mask;
      mem_issue_slot_5_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_5_com_2 = 12'h0;
      mem_issue_slot_5_uncom_2 = soc2.core.mem_issue_unit.slots_5.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_6_com_2;
  wire [11:0] mem_issue_slot_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_6.slot_uop_rob_idx))
    begin
      mem_issue_slot_6_com_2 = soc2.core.mem_issue_unit.slots_6.slot_uop_br_mask;
      mem_issue_slot_6_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_6_com_2 = 12'h0;
      mem_issue_slot_6_uncom_2 = soc2.core.mem_issue_unit.slots_6.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_7_com_2;
  wire [11:0] mem_issue_slot_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_7.slot_uop_rob_idx))
    begin
      mem_issue_slot_7_com_2 = soc2.core.mem_issue_unit.slots_7.slot_uop_br_mask;
      mem_issue_slot_7_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_7_com_2 = 12'h0;
      mem_issue_slot_7_uncom_2 = soc2.core.mem_issue_unit.slots_7.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_8_com_2;
  wire [11:0] mem_issue_slot_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_8.slot_uop_rob_idx))
    begin
      mem_issue_slot_8_com_2 = soc2.core.mem_issue_unit.slots_8.slot_uop_br_mask;
      mem_issue_slot_8_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_8_com_2 = 12'h0;
      mem_issue_slot_8_uncom_2 = soc2.core.mem_issue_unit.slots_8.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_9_com_2;
  wire [11:0] mem_issue_slot_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_9.slot_uop_rob_idx))
    begin
      mem_issue_slot_9_com_2 = soc2.core.mem_issue_unit.slots_9.slot_uop_br_mask;
      mem_issue_slot_9_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_9_com_2 = 12'h0;
      mem_issue_slot_9_uncom_2 = soc2.core.mem_issue_unit.slots_9.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_10_com_2;
  wire [11:0] mem_issue_slot_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_10.slot_uop_rob_idx))
    begin
      mem_issue_slot_10_com_2 = soc2.core.mem_issue_unit.slots_10.slot_uop_br_mask;
      mem_issue_slot_10_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_10_com_2 = 12'h0;
      mem_issue_slot_10_uncom_2 = soc2.core.mem_issue_unit.slots_10.slot_uop_br_mask;
    end
  end

  wire [11:0] mem_issue_slot_11_com_2;
  wire [11:0] mem_issue_slot_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.mem_issue_unit.slots_11.slot_uop_rob_idx))
    begin
      mem_issue_slot_11_com_2 = soc2.core.mem_issue_unit.slots_11.slot_uop_br_mask;
      mem_issue_slot_11_uncom_2 = 12'hfff;
    end
    else
    begin
      mem_issue_slot_11_com_2 = 12'h0;
      mem_issue_slot_11_uncom_2 = soc2.core.mem_issue_unit.slots_11.slot_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_0_com_2;
  wire [11:0] lsu_ldq_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx))
    begin
      lsu_ldq_0_com_2 = soc2.lsu.ldq_0_bits_uop_br_mask;
      lsu_ldq_0_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_0_com_2 = 12'h0;
      lsu_ldq_0_uncom_2 = soc2.lsu.ldq_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_1_com_2;
  wire [11:0] lsu_ldq_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx))
    begin
      lsu_ldq_1_com_2 = soc2.lsu.ldq_1_bits_uop_br_mask;
      lsu_ldq_1_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_1_com_2 = 12'h0;
      lsu_ldq_1_uncom_2 = soc2.lsu.ldq_1_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_2_com_2;
  wire [11:0] lsu_ldq_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx))
    begin
      lsu_ldq_2_com_2 = soc2.lsu.ldq_2_bits_uop_br_mask;
      lsu_ldq_2_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_2_com_2 = 12'h0;
      lsu_ldq_2_uncom_2 = soc2.lsu.ldq_2_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_3_com_2;
  wire [11:0] lsu_ldq_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx))
    begin
      lsu_ldq_3_com_2 = soc2.lsu.ldq_3_bits_uop_br_mask;
      lsu_ldq_3_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_3_com_2 = 12'h0;
      lsu_ldq_3_uncom_2 = soc2.lsu.ldq_3_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_4_com_2;
  wire [11:0] lsu_ldq_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx))
    begin
      lsu_ldq_4_com_2 = soc2.lsu.ldq_4_bits_uop_br_mask;
      lsu_ldq_4_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_4_com_2 = 12'h0;
      lsu_ldq_4_uncom_2 = soc2.lsu.ldq_4_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_5_com_2;
  wire [11:0] lsu_ldq_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx))
    begin
      lsu_ldq_5_com_2 = soc2.lsu.ldq_5_bits_uop_br_mask;
      lsu_ldq_5_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_5_com_2 = 12'h0;
      lsu_ldq_5_uncom_2 = soc2.lsu.ldq_5_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_6_com_2;
  wire [11:0] lsu_ldq_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx))
    begin
      lsu_ldq_6_com_2 = soc2.lsu.ldq_6_bits_uop_br_mask;
      lsu_ldq_6_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_6_com_2 = 12'h0;
      lsu_ldq_6_uncom_2 = soc2.lsu.ldq_6_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_7_com_2;
  wire [11:0] lsu_ldq_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx))
    begin
      lsu_ldq_7_com_2 = soc2.lsu.ldq_7_bits_uop_br_mask;
      lsu_ldq_7_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_7_com_2 = 12'h0;
      lsu_ldq_7_uncom_2 = soc2.lsu.ldq_7_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_8_com_2;
  wire [11:0] lsu_ldq_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx))
    begin
      lsu_ldq_8_com_2 = soc2.lsu.ldq_8_bits_uop_br_mask;
      lsu_ldq_8_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_8_com_2 = 12'h0;
      lsu_ldq_8_uncom_2 = soc2.lsu.ldq_8_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_9_com_2;
  wire [11:0] lsu_ldq_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx))
    begin
      lsu_ldq_9_com_2 = soc2.lsu.ldq_9_bits_uop_br_mask;
      lsu_ldq_9_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_9_com_2 = 12'h0;
      lsu_ldq_9_uncom_2 = soc2.lsu.ldq_9_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_10_com_2;
  wire [11:0] lsu_ldq_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx))
    begin
      lsu_ldq_10_com_2 = soc2.lsu.ldq_10_bits_uop_br_mask;
      lsu_ldq_10_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_10_com_2 = 12'h0;
      lsu_ldq_10_uncom_2 = soc2.lsu.ldq_10_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_11_com_2;
  wire [11:0] lsu_ldq_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx))
    begin
      lsu_ldq_11_com_2 = soc2.lsu.ldq_11_bits_uop_br_mask;
      lsu_ldq_11_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_11_com_2 = 12'h0;
      lsu_ldq_11_uncom_2 = soc2.lsu.ldq_11_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_12_com_2;
  wire [11:0] lsu_ldq_12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx))
    begin
      lsu_ldq_12_com_2 = soc2.lsu.ldq_12_bits_uop_br_mask;
      lsu_ldq_12_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_12_com_2 = 12'h0;
      lsu_ldq_12_uncom_2 = soc2.lsu.ldq_12_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_13_com_2;
  wire [11:0] lsu_ldq_13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx))
    begin
      lsu_ldq_13_com_2 = soc2.lsu.ldq_13_bits_uop_br_mask;
      lsu_ldq_13_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_13_com_2 = 12'h0;
      lsu_ldq_13_uncom_2 = soc2.lsu.ldq_13_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_14_com_2;
  wire [11:0] lsu_ldq_14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx))
    begin
      lsu_ldq_14_com_2 = soc2.lsu.ldq_14_bits_uop_br_mask;
      lsu_ldq_14_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_14_com_2 = 12'h0;
      lsu_ldq_14_uncom_2 = soc2.lsu.ldq_14_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_ldq_15_com_2;
  wire [11:0] lsu_ldq_15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx))
    begin
      lsu_ldq_15_com_2 = soc2.lsu.ldq_15_bits_uop_br_mask;
      lsu_ldq_15_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_ldq_15_com_2 = 12'h0;
      lsu_ldq_15_uncom_2 = soc2.lsu.ldq_15_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_com_2;
  wire [11:0] lsu_mem_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.mem_incoming_uop_0_rob_idx))
    begin
      lsu_mem_com_2 = soc2.lsu.mem_incoming_uop_0_br_mask;
      lsu_mem_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_mem_com_2 = 12'h0;
      lsu_mem_uncom_2 = soc2.lsu.mem_incoming_uop_0_br_mask;
    end
  end

  wire [11:0] lsu_mem_stq_com_2;
  wire [11:0] lsu_mem_stq_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.mem_stq_incoming_e_0_bits_uop_rob_idx))
    begin
      lsu_mem_stq_com_2 = soc2.lsu.mem_stq_incoming_e_0_bits_uop_br_mask;
      lsu_mem_stq_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_mem_stq_com_2 = 12'h0;
      lsu_mem_stq_uncom_2 = soc2.lsu.mem_stq_incoming_e_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_retry_com_2;
  wire [11:0] lsu_mem_retry_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.mem_stq_retry_e_bits_uop_rob_idx))
    begin
      lsu_mem_retry_com_2 = soc2.lsu.mem_stq_retry_e_bits_uop_br_mask;
      lsu_mem_retry_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_mem_retry_com_2 = 12'h0;
      lsu_mem_retry_uncom_2 = soc2.lsu.mem_stq_retry_e_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_mem_xcpt_com_2;
  wire [11:0] lsu_mem_xcpt_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.mem_xcpt_uops_0_rob_idx))
    begin
      lsu_mem_xcpt_com_2 = soc2.lsu.mem_xcpt_uops_0_br_mask;
      lsu_mem_xcpt_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_mem_xcpt_com_2 = 12'h0;
      lsu_mem_xcpt_uncom_2 = soc2.lsu.mem_xcpt_uops_0_br_mask;
    end
  end

  wire [11:0] lsu_mem_stdf_com_2;
  wire [11:0] lsu_mem_stdf_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.mem_stdf_uop_rob_idx))
    begin
      lsu_mem_stdf_com_2 = soc2.lsu.mem_stdf_uop_br_mask;
      lsu_mem_stdf_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_mem_stdf_com_2 = 12'h0;
      lsu_mem_stdf_uncom_2 = soc2.lsu.mem_stdf_uop_br_mask;
    end
  end

  wire [11:0] lsu_stdf_com_2;
  wire [11:0] lsu_stdf_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stdf_clr_bsy_rob_idx))
    begin
      lsu_stdf_com_2 = soc2.lsu.stdf_clr_bsy_brmask;
      lsu_stdf_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stdf_com_2 = 12'h0;
      lsu_stdf_uncom_2 = soc2.lsu.stdf_clr_bsy_brmask;
    end
  end

  wire [11:0] lsu_stq_0_com_2;
  wire [11:0] lsu_stq_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx))
    begin
      lsu_stq_0_com_2 = soc2.lsu.stq_0_bits_uop_br_mask;
      lsu_stq_0_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_0_com_2 = 12'h0;
      lsu_stq_0_uncom_2 = soc2.lsu.stq_0_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_1_com_2;
  wire [11:0] lsu_stq_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx))
    begin
      lsu_stq_1_com_2 = soc2.lsu.stq_1_bits_uop_br_mask;
      lsu_stq_1_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_1_com_2 = 12'h0;
      lsu_stq_1_uncom_2 = soc2.lsu.stq_1_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_2_com_2;
  wire [11:0] lsu_stq_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx))
    begin
      lsu_stq_2_com_2 = soc2.lsu.stq_2_bits_uop_br_mask;
      lsu_stq_2_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_2_com_2 = 12'h0;
      lsu_stq_2_uncom_2 = soc2.lsu.stq_2_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_3_com_2;
  wire [11:0] lsu_stq_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx))
    begin
      lsu_stq_3_com_2 = soc2.lsu.stq_3_bits_uop_br_mask;
      lsu_stq_3_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_3_com_2 = 12'h0;
      lsu_stq_3_uncom_2 = soc2.lsu.stq_3_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_4_com_2;
  wire [11:0] lsu_stq_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx))
    begin
      lsu_stq_4_com_2 = soc2.lsu.stq_4_bits_uop_br_mask;
      lsu_stq_4_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_4_com_2 = 12'h0;
      lsu_stq_4_uncom_2 = soc2.lsu.stq_4_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_5_com_2;
  wire [11:0] lsu_stq_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx))
    begin
      lsu_stq_5_com_2 = soc2.lsu.stq_5_bits_uop_br_mask;
      lsu_stq_5_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_5_com_2 = 12'h0;
      lsu_stq_5_uncom_2 = soc2.lsu.stq_5_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_6_com_2;
  wire [11:0] lsu_stq_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx))
    begin
      lsu_stq_6_com_2 = soc2.lsu.stq_6_bits_uop_br_mask;
      lsu_stq_6_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_6_com_2 = 12'h0;
      lsu_stq_6_uncom_2 = soc2.lsu.stq_6_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_7_com_2;
  wire [11:0] lsu_stq_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx))
    begin
      lsu_stq_7_com_2 = soc2.lsu.stq_7_bits_uop_br_mask;
      lsu_stq_7_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_7_com_2 = 12'h0;
      lsu_stq_7_uncom_2 = soc2.lsu.stq_7_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_8_com_2;
  wire [11:0] lsu_stq_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx))
    begin
      lsu_stq_8_com_2 = soc2.lsu.stq_8_bits_uop_br_mask;
      lsu_stq_8_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_8_com_2 = 12'h0;
      lsu_stq_8_uncom_2 = soc2.lsu.stq_8_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_9_com_2;
  wire [11:0] lsu_stq_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx))
    begin
      lsu_stq_9_com_2 = soc2.lsu.stq_9_bits_uop_br_mask;
      lsu_stq_9_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_9_com_2 = 12'h0;
      lsu_stq_9_uncom_2 = soc2.lsu.stq_9_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_10_com_2;
  wire [11:0] lsu_stq_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx))
    begin
      lsu_stq_10_com_2 = soc2.lsu.stq_10_bits_uop_br_mask;
      lsu_stq_10_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_10_com_2 = 12'h0;
      lsu_stq_10_uncom_2 = soc2.lsu.stq_10_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_11_com_2;
  wire [11:0] lsu_stq_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx))
    begin
      lsu_stq_11_com_2 = soc2.lsu.stq_11_bits_uop_br_mask;
      lsu_stq_11_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_11_com_2 = 12'h0;
      lsu_stq_11_uncom_2 = soc2.lsu.stq_11_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_12_com_2;
  wire [11:0] lsu_stq_12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx))
    begin
      lsu_stq_12_com_2 = soc2.lsu.stq_12_bits_uop_br_mask;
      lsu_stq_12_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_12_com_2 = 12'h0;
      lsu_stq_12_uncom_2 = soc2.lsu.stq_12_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_13_com_2;
  wire [11:0] lsu_stq_13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx))
    begin
      lsu_stq_13_com_2 = soc2.lsu.stq_13_bits_uop_br_mask;
      lsu_stq_13_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_13_com_2 = 12'h0;
      lsu_stq_13_uncom_2 = soc2.lsu.stq_13_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_14_com_2;
  wire [11:0] lsu_stq_14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx))
    begin
      lsu_stq_14_com_2 = soc2.lsu.stq_14_bits_uop_br_mask;
      lsu_stq_14_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_14_com_2 = 12'h0;
      lsu_stq_14_uncom_2 = soc2.lsu.stq_14_bits_uop_br_mask;
    end
  end

  wire [11:0] lsu_stq_15_com_2;
  wire [11:0] lsu_stq_15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx))
    begin
      lsu_stq_15_com_2 = soc2.lsu.stq_15_bits_uop_br_mask;
      lsu_stq_15_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_stq_15_com_2 = 12'h0;
      lsu_stq_15_uncom_2 = soc2.lsu.stq_15_bits_uop_br_mask;
    end
  end

  wire [11:0] rob__0_com_2;
  wire [11:0] rob__0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000000))
    begin
      rob__0_com_2 = soc2.core.rob.rob_uop__0_br_mask;
      rob__0_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__0_com_2 = 12'h0;
      rob__0_uncom_2 = soc2.core.rob.rob_uop__0_br_mask;
    end
  end

  wire [11:0] rob__1_com_2;
  wire [11:0] rob__1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000010))
    begin
      rob__1_com_2 = soc2.core.rob.rob_uop__1_br_mask;
      rob__1_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__1_com_2 = 12'h0;
      rob__1_uncom_2 = soc2.core.rob.rob_uop__1_br_mask;
    end
  end

  wire [11:0] rob__2_com_2;
  wire [11:0] rob__2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000100))
    begin
      rob__2_com_2 = soc2.core.rob.rob_uop__2_br_mask;
      rob__2_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__2_com_2 = 12'h0;
      rob__2_uncom_2 = soc2.core.rob.rob_uop__2_br_mask;
    end
  end

  wire [11:0] rob__3_com_2;
  wire [11:0] rob__3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000110))
    begin
      rob__3_com_2 = soc2.core.rob.rob_uop__3_br_mask;
      rob__3_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__3_com_2 = 12'h0;
      rob__3_uncom_2 = soc2.core.rob.rob_uop__3_br_mask;
    end
  end

  wire [11:0] rob__4_com_2;
  wire [11:0] rob__4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001000))
    begin
      rob__4_com_2 = soc2.core.rob.rob_uop__4_br_mask;
      rob__4_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__4_com_2 = 12'h0;
      rob__4_uncom_2 = soc2.core.rob.rob_uop__4_br_mask;
    end
  end

  wire [11:0] rob__5_com_2;
  wire [11:0] rob__5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001010))
    begin
      rob__5_com_2 = soc2.core.rob.rob_uop__5_br_mask;
      rob__5_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__5_com_2 = 12'h0;
      rob__5_uncom_2 = soc2.core.rob.rob_uop__5_br_mask;
    end
  end

  wire [11:0] rob__6_com_2;
  wire [11:0] rob__6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001100))
    begin
      rob__6_com_2 = soc2.core.rob.rob_uop__6_br_mask;
      rob__6_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__6_com_2 = 12'h0;
      rob__6_uncom_2 = soc2.core.rob.rob_uop__6_br_mask;
    end
  end

  wire [11:0] rob__7_com_2;
  wire [11:0] rob__7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001110))
    begin
      rob__7_com_2 = soc2.core.rob.rob_uop__7_br_mask;
      rob__7_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__7_com_2 = 12'h0;
      rob__7_uncom_2 = soc2.core.rob.rob_uop__7_br_mask;
    end
  end

  wire [11:0] rob__8_com_2;
  wire [11:0] rob__8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010000))
    begin
      rob__8_com_2 = soc2.core.rob.rob_uop__8_br_mask;
      rob__8_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__8_com_2 = 12'h0;
      rob__8_uncom_2 = soc2.core.rob.rob_uop__8_br_mask;
    end
  end

  wire [11:0] rob__9_com_2;
  wire [11:0] rob__9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010010))
    begin
      rob__9_com_2 = soc2.core.rob.rob_uop__9_br_mask;
      rob__9_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__9_com_2 = 12'h0;
      rob__9_uncom_2 = soc2.core.rob.rob_uop__9_br_mask;
    end
  end

  wire [11:0] rob__10_com_2;
  wire [11:0] rob__10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010100))
    begin
      rob__10_com_2 = soc2.core.rob.rob_uop__10_br_mask;
      rob__10_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__10_com_2 = 12'h0;
      rob__10_uncom_2 = soc2.core.rob.rob_uop__10_br_mask;
    end
  end

  wire [11:0] rob__11_com_2;
  wire [11:0] rob__11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010110))
    begin
      rob__11_com_2 = soc2.core.rob.rob_uop__11_br_mask;
      rob__11_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__11_com_2 = 12'h0;
      rob__11_uncom_2 = soc2.core.rob.rob_uop__11_br_mask;
    end
  end

  wire [11:0] rob__12_com_2;
  wire [11:0] rob__12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011000))
    begin
      rob__12_com_2 = soc2.core.rob.rob_uop__12_br_mask;
      rob__12_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__12_com_2 = 12'h0;
      rob__12_uncom_2 = soc2.core.rob.rob_uop__12_br_mask;
    end
  end

  wire [11:0] rob__13_com_2;
  wire [11:0] rob__13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011010))
    begin
      rob__13_com_2 = soc2.core.rob.rob_uop__13_br_mask;
      rob__13_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__13_com_2 = 12'h0;
      rob__13_uncom_2 = soc2.core.rob.rob_uop__13_br_mask;
    end
  end

  wire [11:0] rob__14_com_2;
  wire [11:0] rob__14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011100))
    begin
      rob__14_com_2 = soc2.core.rob.rob_uop__14_br_mask;
      rob__14_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__14_com_2 = 12'h0;
      rob__14_uncom_2 = soc2.core.rob.rob_uop__14_br_mask;
    end
  end

  wire [11:0] rob__15_com_2;
  wire [11:0] rob__15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011110))
    begin
      rob__15_com_2 = soc2.core.rob.rob_uop__15_br_mask;
      rob__15_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__15_com_2 = 12'h0;
      rob__15_uncom_2 = soc2.core.rob.rob_uop__15_br_mask;
    end
  end

  wire [11:0] rob__16_com_2;
  wire [11:0] rob__16_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100000))
    begin
      rob__16_com_2 = soc2.core.rob.rob_uop__16_br_mask;
      rob__16_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__16_com_2 = 12'h0;
      rob__16_uncom_2 = soc2.core.rob.rob_uop__16_br_mask;
    end
  end

  wire [11:0] rob__17_com_2;
  wire [11:0] rob__17_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100010))
    begin
      rob__17_com_2 = soc2.core.rob.rob_uop__17_br_mask;
      rob__17_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__17_com_2 = 12'h0;
      rob__17_uncom_2 = soc2.core.rob.rob_uop__17_br_mask;
    end
  end

  wire [11:0] rob__18_com_2;
  wire [11:0] rob__18_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100100))
    begin
      rob__18_com_2 = soc2.core.rob.rob_uop__18_br_mask;
      rob__18_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__18_com_2 = 12'h0;
      rob__18_uncom_2 = soc2.core.rob.rob_uop__18_br_mask;
    end
  end

  wire [11:0] rob__19_com_2;
  wire [11:0] rob__19_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100110))
    begin
      rob__19_com_2 = soc2.core.rob.rob_uop__19_br_mask;
      rob__19_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__19_com_2 = 12'h0;
      rob__19_uncom_2 = soc2.core.rob.rob_uop__19_br_mask;
    end
  end

  wire [11:0] rob__20_com_2;
  wire [11:0] rob__20_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101000))
    begin
      rob__20_com_2 = soc2.core.rob.rob_uop__20_br_mask;
      rob__20_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__20_com_2 = 12'h0;
      rob__20_uncom_2 = soc2.core.rob.rob_uop__20_br_mask;
    end
  end

  wire [11:0] rob__21_com_2;
  wire [11:0] rob__21_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101010))
    begin
      rob__21_com_2 = soc2.core.rob.rob_uop__21_br_mask;
      rob__21_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__21_com_2 = 12'h0;
      rob__21_uncom_2 = soc2.core.rob.rob_uop__21_br_mask;
    end
  end

  wire [11:0] rob__22_com_2;
  wire [11:0] rob__22_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101100))
    begin
      rob__22_com_2 = soc2.core.rob.rob_uop__22_br_mask;
      rob__22_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__22_com_2 = 12'h0;
      rob__22_uncom_2 = soc2.core.rob.rob_uop__22_br_mask;
    end
  end

  wire [11:0] rob__23_com_2;
  wire [11:0] rob__23_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101110))
    begin
      rob__23_com_2 = soc2.core.rob.rob_uop__23_br_mask;
      rob__23_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__23_com_2 = 12'h0;
      rob__23_uncom_2 = soc2.core.rob.rob_uop__23_br_mask;
    end
  end

  wire [11:0] rob__24_com_2;
  wire [11:0] rob__24_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110000))
    begin
      rob__24_com_2 = soc2.core.rob.rob_uop__24_br_mask;
      rob__24_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__24_com_2 = 12'h0;
      rob__24_uncom_2 = soc2.core.rob.rob_uop__24_br_mask;
    end
  end

  wire [11:0] rob__25_com_2;
  wire [11:0] rob__25_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110010))
    begin
      rob__25_com_2 = soc2.core.rob.rob_uop__25_br_mask;
      rob__25_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__25_com_2 = 12'h0;
      rob__25_uncom_2 = soc2.core.rob.rob_uop__25_br_mask;
    end
  end

  wire [11:0] rob__26_com_2;
  wire [11:0] rob__26_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110100))
    begin
      rob__26_com_2 = soc2.core.rob.rob_uop__26_br_mask;
      rob__26_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__26_com_2 = 12'h0;
      rob__26_uncom_2 = soc2.core.rob.rob_uop__26_br_mask;
    end
  end

  wire [11:0] rob__27_com_2;
  wire [11:0] rob__27_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110110))
    begin
      rob__27_com_2 = soc2.core.rob.rob_uop__27_br_mask;
      rob__27_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__27_com_2 = 12'h0;
      rob__27_uncom_2 = soc2.core.rob.rob_uop__27_br_mask;
    end
  end

  wire [11:0] rob__28_com_2;
  wire [11:0] rob__28_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111000))
    begin
      rob__28_com_2 = soc2.core.rob.rob_uop__28_br_mask;
      rob__28_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__28_com_2 = 12'h0;
      rob__28_uncom_2 = soc2.core.rob.rob_uop__28_br_mask;
    end
  end

  wire [11:0] rob__29_com_2;
  wire [11:0] rob__29_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111010))
    begin
      rob__29_com_2 = soc2.core.rob.rob_uop__29_br_mask;
      rob__29_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__29_com_2 = 12'h0;
      rob__29_uncom_2 = soc2.core.rob.rob_uop__29_br_mask;
    end
  end

  wire [11:0] rob__30_com_2;
  wire [11:0] rob__30_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111100))
    begin
      rob__30_com_2 = soc2.core.rob.rob_uop__30_br_mask;
      rob__30_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__30_com_2 = 12'h0;
      rob__30_uncom_2 = soc2.core.rob.rob_uop__30_br_mask;
    end
  end

  wire [11:0] rob__31_com_2;
  wire [11:0] rob__31_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111110))
    begin
      rob__31_com_2 = soc2.core.rob.rob_uop__31_br_mask;
      rob__31_uncom_2 = 12'hfff;
    end
    else
    begin
      rob__31_com_2 = 12'h0;
      rob__31_uncom_2 = soc2.core.rob.rob_uop__31_br_mask;
    end
  end

  wire [11:0] rob_1_0_com_2;
  wire [11:0] rob_1_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000001))
    begin
      rob_1_0_com_2 = soc2.core.rob.rob_uop_1_0_br_mask;
      rob_1_0_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_0_com_2 = 12'h0;
      rob_1_0_uncom_2 = soc2.core.rob.rob_uop_1_0_br_mask;
    end
  end

  wire [11:0] rob_1_1_com_2;
  wire [11:0] rob_1_1_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000011))
    begin
      rob_1_1_com_2 = soc2.core.rob.rob_uop_1_1_br_mask;
      rob_1_1_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_1_com_2 = 12'h0;
      rob_1_1_uncom_2 = soc2.core.rob.rob_uop_1_1_br_mask;
    end
  end

  wire [11:0] rob_1_2_com_2;
  wire [11:0] rob_1_2_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000101))
    begin
      rob_1_2_com_2 = soc2.core.rob.rob_uop_1_2_br_mask;
      rob_1_2_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_2_com_2 = 12'h0;
      rob_1_2_uncom_2 = soc2.core.rob.rob_uop_1_2_br_mask;
    end
  end

  wire [11:0] rob_1_3_com_2;
  wire [11:0] rob_1_3_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b000111))
    begin
      rob_1_3_com_2 = soc2.core.rob.rob_uop_1_3_br_mask;
      rob_1_3_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_3_com_2 = 12'h0;
      rob_1_3_uncom_2 = soc2.core.rob.rob_uop_1_3_br_mask;
    end
  end

  wire [11:0] rob_1_4_com_2;
  wire [11:0] rob_1_4_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001001))
    begin
      rob_1_4_com_2 = soc2.core.rob.rob_uop_1_4_br_mask;
      rob_1_4_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_4_com_2 = 12'h0;
      rob_1_4_uncom_2 = soc2.core.rob.rob_uop_1_4_br_mask;
    end
  end

  wire [11:0] rob_1_5_com_2;
  wire [11:0] rob_1_5_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001011))
    begin
      rob_1_5_com_2 = soc2.core.rob.rob_uop_1_5_br_mask;
      rob_1_5_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_5_com_2 = 12'h0;
      rob_1_5_uncom_2 = soc2.core.rob.rob_uop_1_5_br_mask;
    end
  end

  wire [11:0] rob_1_6_com_2;
  wire [11:0] rob_1_6_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001101))
    begin
      rob_1_6_com_2 = soc2.core.rob.rob_uop_1_6_br_mask;
      rob_1_6_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_6_com_2 = 12'h0;
      rob_1_6_uncom_2 = soc2.core.rob.rob_uop_1_6_br_mask;
    end
  end

  wire [11:0] rob_1_7_com_2;
  wire [11:0] rob_1_7_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b001111))
    begin
      rob_1_7_com_2 = soc2.core.rob.rob_uop_1_7_br_mask;
      rob_1_7_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_7_com_2 = 12'h0;
      rob_1_7_uncom_2 = soc2.core.rob.rob_uop_1_7_br_mask;
    end
  end

  wire [11:0] rob_1_8_com_2;
  wire [11:0] rob_1_8_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010001))
    begin
      rob_1_8_com_2 = soc2.core.rob.rob_uop_1_8_br_mask;
      rob_1_8_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_8_com_2 = 12'h0;
      rob_1_8_uncom_2 = soc2.core.rob.rob_uop_1_8_br_mask;
    end
  end

  wire [11:0] rob_1_9_com_2;
  wire [11:0] rob_1_9_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010011))
    begin
      rob_1_9_com_2 = soc2.core.rob.rob_uop_1_9_br_mask;
      rob_1_9_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_9_com_2 = 12'h0;
      rob_1_9_uncom_2 = soc2.core.rob.rob_uop_1_9_br_mask;
    end
  end

  wire [11:0] rob_1_10_com_2;
  wire [11:0] rob_1_10_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010101))
    begin
      rob_1_10_com_2 = soc2.core.rob.rob_uop_1_10_br_mask;
      rob_1_10_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_10_com_2 = 12'h0;
      rob_1_10_uncom_2 = soc2.core.rob.rob_uop_1_10_br_mask;
    end
  end

  wire [11:0] rob_1_11_com_2;
  wire [11:0] rob_1_11_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b010111))
    begin
      rob_1_11_com_2 = soc2.core.rob.rob_uop_1_11_br_mask;
      rob_1_11_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_11_com_2 = 12'h0;
      rob_1_11_uncom_2 = soc2.core.rob.rob_uop_1_11_br_mask;
    end
  end

  wire [11:0] rob_1_12_com_2;
  wire [11:0] rob_1_12_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011001))
    begin
      rob_1_12_com_2 = soc2.core.rob.rob_uop_1_12_br_mask;
      rob_1_12_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_12_com_2 = 12'h0;
      rob_1_12_uncom_2 = soc2.core.rob.rob_uop_1_12_br_mask;
    end
  end

  wire [11:0] rob_1_13_com_2;
  wire [11:0] rob_1_13_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011011))
    begin
      rob_1_13_com_2 = soc2.core.rob.rob_uop_1_13_br_mask;
      rob_1_13_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_13_com_2 = 12'h0;
      rob_1_13_uncom_2 = soc2.core.rob.rob_uop_1_13_br_mask;
    end
  end

  wire [11:0] rob_1_14_com_2;
  wire [11:0] rob_1_14_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011101))
    begin
      rob_1_14_com_2 = soc2.core.rob.rob_uop_1_14_br_mask;
      rob_1_14_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_14_com_2 = 12'h0;
      rob_1_14_uncom_2 = soc2.core.rob.rob_uop_1_14_br_mask;
    end
  end

  wire [11:0] rob_1_15_com_2;
  wire [11:0] rob_1_15_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b011111))
    begin
      rob_1_15_com_2 = soc2.core.rob.rob_uop_1_15_br_mask;
      rob_1_15_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_15_com_2 = 12'h0;
      rob_1_15_uncom_2 = soc2.core.rob.rob_uop_1_15_br_mask;
    end
  end

  wire [11:0] rob_1_16_com_2;
  wire [11:0] rob_1_16_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100001))
    begin
      rob_1_16_com_2 = soc2.core.rob.rob_uop_1_16_br_mask;
      rob_1_16_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_16_com_2 = 12'h0;
      rob_1_16_uncom_2 = soc2.core.rob.rob_uop_1_16_br_mask;
    end
  end

  wire [11:0] rob_1_17_com_2;
  wire [11:0] rob_1_17_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100011))
    begin
      rob_1_17_com_2 = soc2.core.rob.rob_uop_1_17_br_mask;
      rob_1_17_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_17_com_2 = 12'h0;
      rob_1_17_uncom_2 = soc2.core.rob.rob_uop_1_17_br_mask;
    end
  end

  wire [11:0] rob_1_18_com_2;
  wire [11:0] rob_1_18_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100101))
    begin
      rob_1_18_com_2 = soc2.core.rob.rob_uop_1_18_br_mask;
      rob_1_18_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_18_com_2 = 12'h0;
      rob_1_18_uncom_2 = soc2.core.rob.rob_uop_1_18_br_mask;
    end
  end

  wire [11:0] rob_1_19_com_2;
  wire [11:0] rob_1_19_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b100111))
    begin
      rob_1_19_com_2 = soc2.core.rob.rob_uop_1_19_br_mask;
      rob_1_19_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_19_com_2 = 12'h0;
      rob_1_19_uncom_2 = soc2.core.rob.rob_uop_1_19_br_mask;
    end
  end

  wire [11:0] rob_1_20_com_2;
  wire [11:0] rob_1_20_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101001))
    begin
      rob_1_20_com_2 = soc2.core.rob.rob_uop_1_20_br_mask;
      rob_1_20_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_20_com_2 = 12'h0;
      rob_1_20_uncom_2 = soc2.core.rob.rob_uop_1_20_br_mask;
    end
  end

  wire [11:0] rob_1_21_com_2;
  wire [11:0] rob_1_21_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101011))
    begin
      rob_1_21_com_2 = soc2.core.rob.rob_uop_1_21_br_mask;
      rob_1_21_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_21_com_2 = 12'h0;
      rob_1_21_uncom_2 = soc2.core.rob.rob_uop_1_21_br_mask;
    end
  end

  wire [11:0] rob_1_22_com_2;
  wire [11:0] rob_1_22_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101101))
    begin
      rob_1_22_com_2 = soc2.core.rob.rob_uop_1_22_br_mask;
      rob_1_22_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_22_com_2 = 12'h0;
      rob_1_22_uncom_2 = soc2.core.rob.rob_uop_1_22_br_mask;
    end
  end

  wire [11:0] rob_1_23_com_2;
  wire [11:0] rob_1_23_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b101111))
    begin
      rob_1_23_com_2 = soc2.core.rob.rob_uop_1_23_br_mask;
      rob_1_23_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_23_com_2 = 12'h0;
      rob_1_23_uncom_2 = soc2.core.rob.rob_uop_1_23_br_mask;
    end
  end

  wire [11:0] rob_1_24_com_2;
  wire [11:0] rob_1_24_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110001))
    begin
      rob_1_24_com_2 = soc2.core.rob.rob_uop_1_24_br_mask;
      rob_1_24_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_24_com_2 = 12'h0;
      rob_1_24_uncom_2 = soc2.core.rob.rob_uop_1_24_br_mask;
    end
  end

  wire [11:0] rob_1_25_com_2;
  wire [11:0] rob_1_25_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110011))
    begin
      rob_1_25_com_2 = soc2.core.rob.rob_uop_1_25_br_mask;
      rob_1_25_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_25_com_2 = 12'h0;
      rob_1_25_uncom_2 = soc2.core.rob.rob_uop_1_25_br_mask;
    end
  end

  wire [11:0] rob_1_26_com_2;
  wire [11:0] rob_1_26_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110101))
    begin
      rob_1_26_com_2 = soc2.core.rob.rob_uop_1_26_br_mask;
      rob_1_26_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_26_com_2 = 12'h0;
      rob_1_26_uncom_2 = soc2.core.rob.rob_uop_1_26_br_mask;
    end
  end

  wire [11:0] rob_1_27_com_2;
  wire [11:0] rob_1_27_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b110111))
    begin
      rob_1_27_com_2 = soc2.core.rob.rob_uop_1_27_br_mask;
      rob_1_27_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_27_com_2 = 12'h0;
      rob_1_27_uncom_2 = soc2.core.rob.rob_uop_1_27_br_mask;
    end
  end

  wire [11:0] rob_1_28_com_2;
  wire [11:0] rob_1_28_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111001))
    begin
      rob_1_28_com_2 = soc2.core.rob.rob_uop_1_28_br_mask;
      rob_1_28_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_28_com_2 = 12'h0;
      rob_1_28_uncom_2 = soc2.core.rob.rob_uop_1_28_br_mask;
    end
  end

  wire [11:0] rob_1_29_com_2;
  wire [11:0] rob_1_29_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111011))
    begin
      rob_1_29_com_2 = soc2.core.rob.rob_uop_1_29_br_mask;
      rob_1_29_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_29_com_2 = 12'h0;
      rob_1_29_uncom_2 = soc2.core.rob.rob_uop_1_29_br_mask;
    end
  end

  wire [11:0] rob_1_30_com_2;
  wire [11:0] rob_1_30_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111101))
    begin
      rob_1_30_com_2 = soc2.core.rob.rob_uop_1_30_br_mask;
      rob_1_30_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_30_com_2 = 12'h0;
      rob_1_30_uncom_2 = soc2.core.rob.rob_uop_1_30_br_mask;
    end
  end

  wire [11:0] rob_1_31_com_2;
  wire [11:0] rob_1_31_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, 6'b111111))
    begin
      rob_1_31_com_2 = soc2.core.rob.rob_uop_1_31_br_mask;
      rob_1_31_uncom_2 = 12'hfff;
    end
    else
    begin
      rob_1_31_com_2 = 12'h0;
      rob_1_31_uncom_2 = soc2.core.rob.rob_uop_1_31_br_mask;
    end
  end

  wire [11:0] lsu_clr_bsy_brmask_0_com_2;
  wire [11:0] lsu_clr_bsy_brmask_0_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.clr_bsy_rob_idx_0))
    begin
      lsu_clr_bsy_brmask_0_com_2 = soc2.lsu.clr_bsy_brmask_0;
      lsu_clr_bsy_brmask_0_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_clr_bsy_brmask_0_com_2 = 12'h0;
      lsu_clr_bsy_brmask_0_uncom_2 = soc2.lsu.clr_bsy_brmask_0;
    end
  end

  wire [11:0] lsu_r_xcpt_com_2;
  wire [11:0] lsu_r_xcpt_uncom_2;

  always @(*)
  begin
    if (isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.r_xcpt_uop_rob_idx))
    begin
      lsu_r_xcpt_com_2 = soc2.lsu.r_xcpt_uop_br_mask;
      lsu_r_xcpt_uncom_2 = 12'hfff;
    end
    else
    begin
      lsu_r_xcpt_com_2 = 12'h0;
      lsu_r_xcpt_uncom_2 = soc2.lsu.r_xcpt_uop_br_mask;
    end
  end


  //bookkeeping buffers without explicit rob_idx
  //check if loadqueue/storequeue are used and get ROB ID from ldq_idx/stq_idx

  wire [11:0] respq_uops_0_ldq_com_2;
  wire [11:0] respq_uops_0_ldq_uncom_2;

  always @(*)
  begin
    respq_uops_0_ldq_com_2 = 12'h0;
    respq_uops_0_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_0_ldq_com_2 = soc2.dcache.mshrs.respq.uops_0_br_mask;
        respq_uops_0_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_0_ldq_com_2 = 12'h0;
        respq_uops_0_ldq_uncom_2 = soc2.dcache.mshrs.respq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_1_ldq_com_2;
  wire [11:0] respq_uops_1_ldq_uncom_2;

  always @(*)
  begin
    respq_uops_1_ldq_com_2 = 12'h0;
    respq_uops_1_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_1_ldq_com_2 = soc2.dcache.mshrs.respq.uops_1_br_mask;
        respq_uops_1_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_1_ldq_com_2 = 12'h0;
        respq_uops_1_ldq_uncom_2 = soc2.dcache.mshrs.respq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_2_ldq_com_2;
  wire [11:0] respq_uops_2_ldq_uncom_2;

  always @(*)
  begin
    respq_uops_2_ldq_com_2 = 12'h0;
    respq_uops_2_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_2_ldq_com_2 = soc2.dcache.mshrs.respq.uops_2_br_mask;
        respq_uops_2_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_2_ldq_com_2 = 12'h0;
        respq_uops_2_ldq_uncom_2 = soc2.dcache.mshrs.respq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_3_ldq_com_2;
  wire [11:0] respq_uops_3_ldq_uncom_2;

  always @(*)
  begin
    respq_uops_3_ldq_com_2 = 12'h0;
    respq_uops_3_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_3_ldq_com_2 = soc2.dcache.mshrs.respq.uops_3_br_mask;
        respq_uops_3_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_3_ldq_com_2 = 12'h0;
        respq_uops_3_ldq_uncom_2 = soc2.dcache.mshrs.respq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_0_stq_com_2;
  wire [11:0] respq_uops_0_stq_uncom_2;

  always @(*)
  begin
    respq_uops_0_stq_com_2 = 12'h0;
    respq_uops_0_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_0_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_0_stq_com_2 = soc2.dcache.mshrs.respq.uops_0_br_mask;
        respq_uops_0_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_0_stq_com_2 = 12'h0;
        respq_uops_0_stq_uncom_2 = soc2.dcache.mshrs.respq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_1_stq_com_2;
  wire [11:0] respq_uops_1_stq_uncom_2;

  always @(*)
  begin
    respq_uops_1_stq_com_2 = 12'h0;
    respq_uops_1_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_1_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_1_stq_com_2 = soc2.dcache.mshrs.respq.uops_1_br_mask;
        respq_uops_1_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_1_stq_com_2 = 12'h0;
        respq_uops_1_stq_uncom_2 = soc2.dcache.mshrs.respq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_2_stq_com_2;
  wire [11:0] respq_uops_2_stq_uncom_2;

  always @(*)
  begin
    respq_uops_2_stq_com_2 = 12'h0;
    respq_uops_2_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_2_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_2_stq_com_2 = soc2.dcache.mshrs.respq.uops_2_br_mask;
        respq_uops_2_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_2_stq_com_2 = 12'h0;
        respq_uops_2_stq_uncom_2 = soc2.dcache.mshrs.respq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] respq_uops_3_stq_com_2;
  wire [11:0] respq_uops_3_stq_uncom_2;

  always @(*)
  begin
    respq_uops_3_stq_com_2 = 12'h0;
    respq_uops_3_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.respq.uops_3_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.respq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        respq_uops_3_stq_com_2 = soc2.dcache.mshrs.respq.uops_3_br_mask;
        respq_uops_3_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        respq_uops_3_stq_com_2 = 12'h0;
        respq_uops_3_stq_uncom_2 = soc2.dcache.mshrs.respq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mmios_0_ldq_com_2;
  wire [11:0] mmios_0_ldq_uncom_2;

  always @(*)
  begin
    mmios_0_ldq_com_2 = 12'h0;
    mmios_0_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mmios_0.req_uop_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
	)
      begin
        mmios_0_ldq_com_2 = soc2.dcache.mshrs.mmios_0.req_uop_br_mask;
        mmios_0_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mmios_0_ldq_com_2 = 12'h0;
        mmios_0_ldq_uncom_2 = soc2.dcache.mshrs.mmios_0.req_uop_br_mask;
      end
    end
  end

  wire [11:0] mmios_0_stq_com_2;
  wire [11:0] mmios_0_stq_uncom_2;

  always @(*)
  begin
    mmios_0_stq_com_2 = 12'h0;
    mmios_0_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mmios_0.req_uop_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
	 soc2.dcache.mshrs.mmios_0.req_uop_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
	)
      begin
        mmios_0_stq_com_2 = soc2.dcache.mshrs.mmios_0.req_uop_br_mask;
        mmios_0_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mmios_0_stq_com_2 = 12'h0;
        mmios_0_stq_uncom_2 = soc2.dcache.mshrs.mmios_0.req_uop_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_0_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_0_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_0_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_0_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_0_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
        mshrs_0_rpq_uops_0_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_0_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_1_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_1_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_1_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_1_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_1_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
        mshrs_0_rpq_uops_1_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_0_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_2_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_2_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_2_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_2_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_2_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
        mshrs_0_rpq_uops_2_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_2_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_2_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_3_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_3_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_3_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_3_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_3_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
        mshrs_0_rpq_uops_3_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_3_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_3_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_4_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_4_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_4_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_4_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_4_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_4_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
        mshrs_0_rpq_uops_4_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_4_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_4_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_5_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_5_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_5_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_5_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_5_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_5_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
        mshrs_0_rpq_uops_5_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_5_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_5_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_6_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_6_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_6_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_6_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_6_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_6_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
        mshrs_0_rpq_uops_6_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_6_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_6_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_7_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_7_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_7_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_7_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_7_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_7_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
        mshrs_0_rpq_uops_7_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_7_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_7_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_8_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_8_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_8_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_8_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_8_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_8_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
        mshrs_0_rpq_uops_8_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_8_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_8_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_9_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_9_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_9_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_9_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_9_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_9_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
        mshrs_0_rpq_uops_9_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_9_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_9_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_10_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_10_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_10_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_10_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_10_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_10_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
        mshrs_0_rpq_uops_10_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_10_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_10_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_11_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_11_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_11_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_11_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_11_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_11_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
        mshrs_0_rpq_uops_11_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_11_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_11_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_12_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_12_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_12_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_12_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_12_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_12_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
        mshrs_0_rpq_uops_12_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_12_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_12_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_13_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_13_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_13_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_13_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_13_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_13_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
        mshrs_0_rpq_uops_13_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_13_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_13_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_14_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_14_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_14_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_14_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_14_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_14_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
        mshrs_0_rpq_uops_14_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_14_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_14_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_15_ldq_com_2;
  wire [11:0] mshrs_0_rpq_uops_15_ldq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_15_ldq_com_2 = 12'h0;
    mshrs_0_rpq_uops_15_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_15_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_15_ldq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
        mshrs_0_rpq_uops_15_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_15_ldq_com_2 = 12'h0;
        mshrs_0_rpq_uops_15_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
      end
    end
  end


  wire [11:0] mshrs_0_rpq_uops_0_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_0_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_0_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_0_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_0_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_0_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
        mshrs_0_rpq_uops_0_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_0_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_1_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_1_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_1_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_1_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_1_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_1_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
        mshrs_0_rpq_uops_1_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_0_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_0_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_2_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_2_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_2_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_2_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_2_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_2_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
        mshrs_0_rpq_uops_2_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_2_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_2_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_3_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_3_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_3_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_3_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_3_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_3_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
        mshrs_0_rpq_uops_3_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_3_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_3_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_4_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_4_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_4_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_4_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_4_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_4_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_4_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
        mshrs_0_rpq_uops_4_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_4_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_4_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_5_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_5_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_5_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_5_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_5_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_5_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_5_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
        mshrs_0_rpq_uops_5_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_5_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_5_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_6_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_6_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_6_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_6_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_6_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_6_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_6_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
        mshrs_0_rpq_uops_6_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_6_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_6_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_7_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_7_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_7_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_7_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_7_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_7_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_7_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
        mshrs_0_rpq_uops_7_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_7_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_7_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_8_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_8_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_8_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_8_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_8_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_8_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_8_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
        mshrs_0_rpq_uops_8_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_8_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_8_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_9_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_9_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_9_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_9_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_9_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_9_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_9_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
        mshrs_0_rpq_uops_9_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_9_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_9_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_10_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_10_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_10_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_10_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_10_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_10_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_10_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
        mshrs_0_rpq_uops_10_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_10_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_10_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_11_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_11_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_11_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_11_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_11_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_11_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_11_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
        mshrs_0_rpq_uops_11_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_11_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_11_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_12_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_12_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_12_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_12_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_12_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_12_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_12_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
        mshrs_0_rpq_uops_12_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_12_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_12_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_13_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_13_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_13_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_13_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_13_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_13_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_13_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
        mshrs_0_rpq_uops_13_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_13_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_13_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_14_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_14_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_14_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_14_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_14_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_14_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_14_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
        mshrs_0_rpq_uops_14_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_14_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_14_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_0_rpq_uops_15_stq_com_2;
  wire [11:0] mshrs_0_rpq_uops_15_stq_uncom_2;

  always @(*)
  begin
    mshrs_0_rpq_uops_15_stq_com_2 = 12'h0;
    mshrs_0_rpq_uops_15_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_0.rpq.uops_15_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_0.rpq.uops_15_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_0_rpq_uops_15_stq_com_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
        mshrs_0_rpq_uops_15_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_0_rpq_uops_15_stq_com_2 = 12'h0;
        mshrs_0_rpq_uops_15_stq_uncom_2 = soc2.dcache.mshrs.mshrs_0.rpq.uops_15_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_0_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_0_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_0_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_0_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_0_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_0_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
        mshrs_1_rpq_uops_0_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_0_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_1_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_1_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_1_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_1_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_1_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_1_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
        mshrs_1_rpq_uops_1_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_0_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_2_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_2_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_2_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_2_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_2_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_2_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
        mshrs_1_rpq_uops_2_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_2_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_2_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_3_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_3_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_3_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_3_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_3_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_3_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
        mshrs_1_rpq_uops_3_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_3_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_3_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_4_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_4_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_4_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_4_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_4_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_4_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
        mshrs_1_rpq_uops_4_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_4_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_4_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_5_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_5_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_5_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_5_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_5_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_5_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
        mshrs_1_rpq_uops_5_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_5_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_5_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_6_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_6_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_6_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_6_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_6_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_6_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
        mshrs_1_rpq_uops_6_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_6_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_6_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_7_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_7_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_7_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_7_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_7_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_7_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
        mshrs_1_rpq_uops_7_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_7_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_7_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_8_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_8_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_8_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_8_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_8_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_8_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
        mshrs_1_rpq_uops_8_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_8_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_8_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_9_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_9_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_9_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_9_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_9_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_9_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
        mshrs_1_rpq_uops_9_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_9_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_9_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_10_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_10_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_10_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_10_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_10_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_10_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
        mshrs_1_rpq_uops_10_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_10_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_10_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_11_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_11_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_11_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_11_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_11_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_11_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
        mshrs_1_rpq_uops_11_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_11_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_11_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_12_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_12_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_12_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_12_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_12_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_12_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
        mshrs_1_rpq_uops_12_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_12_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_12_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_13_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_13_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_13_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_13_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_13_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_13_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
        mshrs_1_rpq_uops_13_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_13_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_13_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_14_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_14_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_14_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_14_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_14_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_14_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
        mshrs_1_rpq_uops_14_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_14_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_14_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_15_ldq_com_2;
  wire [11:0] mshrs_1_rpq_uops_15_ldq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_15_ldq_com_2 = 12'h0;
    mshrs_1_rpq_uops_15_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_15_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_15_ldq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
        mshrs_1_rpq_uops_15_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_15_ldq_com_2 = 12'h0;
        mshrs_1_rpq_uops_15_ldq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
      end
    end
  end


  wire [11:0] mshrs_1_rpq_uops_0_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_0_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_0_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_0_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_0_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_0_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_0_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
        mshrs_1_rpq_uops_0_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_0_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_0_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_1_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_1_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_1_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_1_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_1_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_1_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_1_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
        mshrs_1_rpq_uops_1_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_0_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_0_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_1_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_2_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_2_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_2_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_2_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_2_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_2_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_2_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
        mshrs_1_rpq_uops_2_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_2_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_2_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_2_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_3_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_3_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_3_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_3_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_3_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_3_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_3_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
        mshrs_1_rpq_uops_3_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_3_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_3_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_3_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_4_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_4_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_4_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_4_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_4_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_4_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_4_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
        mshrs_1_rpq_uops_4_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_4_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_4_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_4_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_5_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_5_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_5_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_5_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_5_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_5_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_5_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
        mshrs_1_rpq_uops_5_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_5_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_5_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_5_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_6_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_6_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_6_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_6_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_6_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_6_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_6_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
        mshrs_1_rpq_uops_6_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_6_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_6_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_6_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_7_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_7_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_7_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_7_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_7_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_7_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_7_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
        mshrs_1_rpq_uops_7_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_7_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_7_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_7_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_8_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_8_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_8_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_8_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_8_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_8_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_8_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
        mshrs_1_rpq_uops_8_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_8_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_8_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_8_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_9_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_9_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_9_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_9_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_9_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_9_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_9_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
        mshrs_1_rpq_uops_9_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_9_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_9_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_9_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_10_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_10_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_10_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_10_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_10_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_10_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_10_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
        mshrs_1_rpq_uops_10_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_10_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_10_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_10_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_11_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_11_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_11_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_11_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_11_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_11_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_11_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
        mshrs_1_rpq_uops_11_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_11_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_11_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_11_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_12_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_12_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_12_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_12_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_12_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_12_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_12_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
        mshrs_1_rpq_uops_12_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_12_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_12_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_12_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_13_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_13_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_13_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_13_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_13_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_13_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_13_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
        mshrs_1_rpq_uops_13_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_13_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_13_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_13_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_14_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_14_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_14_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_14_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_14_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_14_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_14_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
        mshrs_1_rpq_uops_14_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_14_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_14_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_14_br_mask;
      end
    end
  end

  wire [11:0] mshrs_1_rpq_uops_15_stq_com_2;
  wire [11:0] mshrs_1_rpq_uops_15_stq_uncom_2;

  always @(*)
  begin
    mshrs_1_rpq_uops_15_stq_com_2 = 12'h0;
    mshrs_1_rpq_uops_15_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.mshrs.mshrs_1.rpq.uops_15_uses_stq == 1'b1)
    begin
      if(soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.mshrs.mshrs_1.rpq.uops_15_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        mshrs_1_rpq_uops_15_stq_com_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
        mshrs_1_rpq_uops_15_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        mshrs_1_rpq_uops_15_stq_com_2 = 12'h0;
        mshrs_1_rpq_uops_15_stq_uncom_2 = soc2.dcache.mshrs.mshrs_1.rpq.uops_15_br_mask;
      end
    end
  end

  wire [11:0] dcache_s1_req_ldq_com_2;
  wire [11:0] dcache_s1_req_ldq_uncom_2;

  always @(*)
  begin
    dcache_s1_req_ldq_com_2 = 12'h0;
    dcache_s1_req_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.s1_req_0_uop_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.s1_req_0_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s1_req_ldq_com_2 = soc2.dcache.s1_req_0_uop_br_mask;
        dcache_s1_req_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        dcache_s1_req_ldq_com_2 = 12'h0;
        dcache_s1_req_ldq_uncom_2 = soc2.dcache.s1_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s1_req_stq_com_2;
  wire [11:0] dcache_s1_req_stq_uncom_2;

  always @(*)
  begin
    dcache_s1_req_stq_com_2 = 12'h0;
    dcache_s1_req_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.s1_req_0_uop_uses_stq == 1'b1)
    begin
      if(soc2.dcache.s1_req_0_uop_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.s1_req_0_uop_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s1_req_stq_com_2 = soc2.dcache.s1_req_0_uop_br_mask;
        dcache_s1_req_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        dcache_s1_req_stq_com_2 = 12'h0;
        dcache_s1_req_stq_uncom_2 = soc2.dcache.s1_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s2_req_ldq_com_2;
  wire [11:0] dcache_s2_req_ldq_uncom_2;

  always @(*)
  begin
    dcache_s2_req_ldq_com_2 = 12'h0;
    dcache_s2_req_ldq_uncom_2 = 12'hfff;
    if(soc2.dcache.s2_req_0_uop_uses_ldq == 1'b1)
    begin
      if(soc2.dcache.s2_req_0_uop_ldq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_0_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_1_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_2_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_3_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_4_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_5_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_6_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_7_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_8_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_9_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_10_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_11_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_12_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_13_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_14_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_ldq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.ldq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s2_req_ldq_com_2 = soc2.dcache.s2_req_0_uop_br_mask;
        dcache_s2_req_ldq_uncom_2 = 12'hfff;
      end
      else
      begin
        dcache_s2_req_ldq_com_2 = 12'h0;
        dcache_s2_req_ldq_uncom_2 = soc2.dcache.s2_req_0_uop_br_mask;
      end
    end
  end

  wire [11:0] dcache_s2_req_stq_com_2;
  wire [11:0] dcache_s2_req_stq_uncom_2;

  always @(*)
  begin
    dcache_s2_req_stq_com_2 = 12'h0;
    dcache_s2_req_stq_uncom_2 = 12'hfff;
    if(soc2.dcache.s2_req_0_uop_uses_stq == 1'b1)
    begin
      if(soc2.dcache.s2_req_0_uop_stq_idx == 4'h0 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_0_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h1 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_1_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h2 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_2_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h3 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_3_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h4 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_4_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h5 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_5_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h6 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_6_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h7 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_7_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h8 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_8_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'h9 && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_9_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'ha && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_10_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'hb && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_11_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'hc && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_12_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'hd && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_13_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'he && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_14_bits_uop_rob_idx) ||
   soc2.dcache.s2_req_0_uop_stq_idx == 4'hf && isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.lsu.stq_15_bits_uop_rob_idx)
  )
      begin
        dcache_s2_req_stq_com_2 = soc2.dcache.s2_req_0_uop_br_mask;
        dcache_s2_req_stq_uncom_2 = 12'hfff;
      end
      else
      begin
        dcache_s2_req_stq_com_2 = 12'h0;
        dcache_s2_req_stq_uncom_2 = soc2.dcache.s2_req_0_uop_br_mask;
      end
    end
  end

//*******************************************//
	wire [11:0] commitable_masks_2;
	wire [11:0] uncommitable_masks_2;

//AND all uncommittable mask
assign uncommitable_masks_2 = alu_T_2_uncom_2 &
div_r_uncom_2 & exe_reg_0_uncom_2 & exe_reg_1_uncom_2 & exe_reg_2_uncom_2 & rrd_0_uncom_2 &
rrd_1_uncom_2 & rrd_2_uncom_2 & bkq_0_uncom_2 & bkq_1_uncom_2 & bkq_2_uncom_2 &
bkq_3_uncom_2 & bkq_4_uncom_2 & alu_T_2_0_uncom_2 & alu_T_2_1_uncom_2 & alu_T_2_2_uncom_2 &
ifpu_T_2_0_uncom_2 & ifpu_T_2_1_uncom_2 & imul_T_2_0_uncom_2 & imul_T_2_1_uncom_2 &
imul_T_2_2_uncom_2 & fp_issue_slot_0_uncom_2 & fp_issue_slot_1_uncom_2 & fp_issue_slot_2_uncom_2 & fp_issue_slot_3_uncom_2 &
fp_issue_slot_4_uncom_2 & fp_issue_slot_5_uncom_2 & fp_issue_slot_6_uncom_2 & fp_issue_slot_7_uncom_2 & fp_issue_slot_8_uncom_2 &
fp_issue_slot_9_uncom_2 & fp_issue_slot_10_uncom_2 & fp_issue_slot_11_uncom_2 & fp_issue_slot_12_uncom_2 & fp_issue_slot_13_uncom_2 &
fp_issue_slot_14_uncom_2 & fp_issue_slot_15_uncom_2 & fp_bkq_0_uncom_2 & fp_bkq_1_uncom_2 & fp_bkq_2_uncom_2 &
fp_bkq_3_uncom_2 & fp_bkq_4_uncom_2 & fp_bkq_5_uncom_2 & fp_bkq_6_uncom_2 & fp_bkq_1_0_uncom_2 &
fp_bkq_1_1_uncom_2 & fp_bkq_1_2_uncom_2 & fdiv_buf_uncom_2 & fdiv_divsqrt_uncom_2 & fdiv_out_uncom_2 &
fpu_T_2_0_uncom_2 & fpu_T_2_1_uncom_2 & fpu_T_2_2_uncom_2 & fpu_T_2_3_uncom_2 & f_exe_reg_uncom_2 &
f_rrd_uncom_2 & int_issue_slot_0_uncom_2 & int_issue_slot_1_uncom_2 & int_issue_slot_2_uncom_2 & int_issue_slot_3_uncom_2 &
int_issue_slot_4_uncom_2 & int_issue_slot_5_uncom_2 & int_issue_slot_6_uncom_2 & int_issue_slot_7_uncom_2 & int_issue_slot_8_uncom_2 &
int_issue_slot_9_uncom_2 & int_issue_slot_10_uncom_2 & int_issue_slot_11_uncom_2 & int_issue_slot_12_uncom_2 & int_issue_slot_13_uncom_2 &
int_issue_slot_14_uncom_2 & int_issue_slot_15_uncom_2 & int_issue_slot_16_uncom_2 & int_issue_slot_17_uncom_2 & int_issue_slot_18_uncom_2 &
int_issue_slot_19_uncom_2 & mem_issue_slot_0_uncom_2 & mem_issue_slot_1_uncom_2 & mem_issue_slot_2_uncom_2 & mem_issue_slot_3_uncom_2 &
mem_issue_slot_4_uncom_2 & mem_issue_slot_5_uncom_2 & mem_issue_slot_6_uncom_2 & mem_issue_slot_7_uncom_2 & mem_issue_slot_8_uncom_2 &
mem_issue_slot_9_uncom_2 & mem_issue_slot_10_uncom_2 & mem_issue_slot_11_uncom_2 & lsu_ldq_0_uncom_2 & lsu_ldq_1_uncom_2 &
lsu_ldq_2_uncom_2 & lsu_ldq_3_uncom_2 & lsu_ldq_4_uncom_2 & lsu_ldq_5_uncom_2 & lsu_ldq_6_uncom_2 &
lsu_ldq_7_uncom_2 & lsu_ldq_8_uncom_2 & lsu_ldq_9_uncom_2 & lsu_ldq_10_uncom_2 & lsu_ldq_11_uncom_2 &
lsu_ldq_12_uncom_2 & lsu_ldq_13_uncom_2 & lsu_ldq_14_uncom_2 & lsu_ldq_15_uncom_2 & lsu_mem_uncom_2 &
lsu_mem_stq_uncom_2 & lsu_mem_retry_uncom_2 & lsu_mem_xcpt_uncom_2 & lsu_stdf_uncom_2 & lsu_mem_stdf_uncom_2 & lsu_stq_0_uncom_2 &
lsu_stq_1_uncom_2 & lsu_stq_2_uncom_2 & lsu_stq_3_uncom_2 & lsu_stq_4_uncom_2 & lsu_stq_5_uncom_2 &
lsu_stq_6_uncom_2 & lsu_stq_7_uncom_2 & lsu_stq_8_uncom_2 & lsu_stq_9_uncom_2 & lsu_stq_10_uncom_2 &
lsu_stq_11_uncom_2 & lsu_stq_12_uncom_2 & lsu_stq_13_uncom_2 & lsu_stq_14_uncom_2 & lsu_stq_15_uncom_2 &
rob__0_uncom_2 & rob__1_uncom_2 & rob__2_uncom_2 & rob__3_uncom_2 & rob__4_uncom_2 &
rob__5_uncom_2 & rob__6_uncom_2 & rob__7_uncom_2 & rob__8_uncom_2 & rob__9_uncom_2 &
rob__10_uncom_2 & rob__11_uncom_2 & rob__12_uncom_2 & rob__13_uncom_2 & rob__14_uncom_2 &
rob__15_uncom_2 & rob__16_uncom_2 & rob__17_uncom_2 & rob__18_uncom_2 & rob__19_uncom_2 &
rob__20_uncom_2 & rob__21_uncom_2 & rob__22_uncom_2 & rob__23_uncom_2 & rob__24_uncom_2 &
rob__25_uncom_2 & rob__26_uncom_2 & rob__27_uncom_2 & rob__28_uncom_2 & rob__29_uncom_2 &
rob__30_uncom_2 & rob__31_uncom_2 & rob_1_0_uncom_2 & rob_1_1_uncom_2 & rob_1_2_uncom_2 &
rob_1_3_uncom_2 & rob_1_4_uncom_2 & rob_1_5_uncom_2 & rob_1_6_uncom_2 & rob_1_7_uncom_2 &
rob_1_8_uncom_2 & rob_1_9_uncom_2 & rob_1_10_uncom_2 & rob_1_11_uncom_2 & rob_1_12_uncom_2 &
rob_1_13_uncom_2 & rob_1_14_uncom_2 & rob_1_15_uncom_2 & rob_1_16_uncom_2 & rob_1_17_uncom_2 &
rob_1_18_uncom_2 & rob_1_19_uncom_2 & rob_1_20_uncom_2 & rob_1_21_uncom_2 & rob_1_22_uncom_2 &
rob_1_23_uncom_2 & rob_1_24_uncom_2 & rob_1_25_uncom_2 & rob_1_26_uncom_2 & rob_1_27_uncom_2 &
rob_1_28_uncom_2 & rob_1_29_uncom_2 & rob_1_30_uncom_2 & rob_1_31_uncom_2 &
lsu_clr_bsy_brmask_0_uncom_2 &
respq_uops_0_ldq_uncom_2 & respq_uops_1_ldq_uncom_2 & respq_uops_2_ldq_uncom_2 & respq_uops_3_ldq_uncom_2 &
respq_uops_0_stq_uncom_2 & respq_uops_1_stq_uncom_2 & respq_uops_2_stq_uncom_2 & respq_uops_3_stq_uncom_2 &
mmios_0_ldq_uncom_2 & mmios_0_stq_uncom_2 &
mshrs_0_rpq_uops_0_ldq_uncom_2 & mshrs_0_rpq_uops_1_ldq_uncom_2 & mshrs_0_rpq_uops_2_ldq_uncom_2 & mshrs_0_rpq_uops_3_ldq_uncom_2 &
mshrs_0_rpq_uops_4_ldq_uncom_2 & mshrs_0_rpq_uops_5_ldq_uncom_2 & mshrs_0_rpq_uops_6_ldq_uncom_2 & mshrs_0_rpq_uops_7_ldq_uncom_2 &
mshrs_0_rpq_uops_8_ldq_uncom_2 & mshrs_0_rpq_uops_9_ldq_uncom_2 & mshrs_0_rpq_uops_10_ldq_uncom_2 & mshrs_0_rpq_uops_11_ldq_uncom_2 &
mshrs_0_rpq_uops_12_ldq_uncom_2 & mshrs_0_rpq_uops_13_ldq_uncom_2 & mshrs_0_rpq_uops_14_ldq_uncom_2 & mshrs_0_rpq_uops_15_ldq_uncom_2 &
mshrs_0_rpq_uops_0_stq_uncom_2 & mshrs_0_rpq_uops_1_stq_uncom_2 & mshrs_0_rpq_uops_2_stq_uncom_2 & mshrs_0_rpq_uops_3_stq_uncom_2 &
mshrs_0_rpq_uops_4_stq_uncom_2 & mshrs_0_rpq_uops_5_stq_uncom_2 & mshrs_0_rpq_uops_6_stq_uncom_2 & mshrs_0_rpq_uops_7_stq_uncom_2 &
mshrs_0_rpq_uops_8_stq_uncom_2 & mshrs_0_rpq_uops_9_stq_uncom_2 & mshrs_0_rpq_uops_10_stq_uncom_2 & mshrs_0_rpq_uops_11_stq_uncom_2 &
mshrs_0_rpq_uops_12_stq_uncom_2 & mshrs_0_rpq_uops_13_stq_uncom_2 & mshrs_0_rpq_uops_14_stq_uncom_2 & mshrs_0_rpq_uops_15_stq_uncom_2 &
mshrs_1_rpq_uops_0_ldq_uncom_2 & mshrs_1_rpq_uops_1_ldq_uncom_2 & mshrs_1_rpq_uops_2_ldq_uncom_2 & mshrs_1_rpq_uops_3_ldq_uncom_2 &
mshrs_1_rpq_uops_4_ldq_uncom_2 & mshrs_1_rpq_uops_5_ldq_uncom_2 & mshrs_1_rpq_uops_6_ldq_uncom_2 & mshrs_1_rpq_uops_7_ldq_uncom_2 &
mshrs_1_rpq_uops_8_ldq_uncom_2 & mshrs_1_rpq_uops_9_ldq_uncom_2 & mshrs_1_rpq_uops_10_ldq_uncom_2 & mshrs_1_rpq_uops_11_ldq_uncom_2 &
mshrs_1_rpq_uops_12_ldq_uncom_2 & mshrs_1_rpq_uops_13_ldq_uncom_2 & mshrs_1_rpq_uops_14_ldq_uncom_2 & mshrs_1_rpq_uops_15_ldq_uncom_2 &
mshrs_1_rpq_uops_0_stq_uncom_2 & mshrs_1_rpq_uops_1_stq_uncom_2 & mshrs_1_rpq_uops_2_stq_uncom_2 & mshrs_1_rpq_uops_3_stq_uncom_2 &
mshrs_1_rpq_uops_4_stq_uncom_2 & mshrs_1_rpq_uops_5_stq_uncom_2 & mshrs_1_rpq_uops_6_stq_uncom_2 & mshrs_1_rpq_uops_7_stq_uncom_2 &
mshrs_1_rpq_uops_8_stq_uncom_2 & mshrs_1_rpq_uops_9_stq_uncom_2 & mshrs_1_rpq_uops_10_stq_uncom_2 & mshrs_1_rpq_uops_11_stq_uncom_2 &
mshrs_1_rpq_uops_12_stq_uncom_2 & mshrs_1_rpq_uops_13_stq_uncom_2 & mshrs_1_rpq_uops_14_stq_uncom_2 & mshrs_1_rpq_uops_15_stq_uncom_2 &
lsu_r_xcpt_uncom_2 & dcache_s1_req_ldq_uncom_2 & dcache_s1_req_stq_uncom_2 & dcache_s2_req_ldq_uncom_2 & dcache_s2_req_stq_uncom_2;

//OR all committable masks
assign commitable_masks_2 = root_br_mask | alu_T_2_com_2 |
div_r_com_2 | exe_reg_0_com_2 | exe_reg_1_com_2 | exe_reg_2_com_2 | rrd_0_com_2 |
rrd_1_com_2 | rrd_2_com_2 | bkq_0_com_2 | bkq_1_com_2 | bkq_2_com_2 |
bkq_3_com_2 | bkq_4_com_2 | alu_T_2_0_com_2 | alu_T_2_1_com_2 | alu_T_2_2_com_2 |
ifpu_T_2_0_com_2 | ifpu_T_2_1_com_2 | imul_T_2_0_com_2 | imul_T_2_1_com_2 |
imul_T_2_2_com_2 | fp_issue_slot_0_com_2 | fp_issue_slot_1_com_2 | fp_issue_slot_2_com_2 | fp_issue_slot_3_com_2 |
fp_issue_slot_4_com_2 | fp_issue_slot_5_com_2 | fp_issue_slot_6_com_2 | fp_issue_slot_7_com_2 | fp_issue_slot_8_com_2 |
fp_issue_slot_9_com_2 | fp_issue_slot_10_com_2 | fp_issue_slot_11_com_2 | fp_issue_slot_12_com_2 | fp_issue_slot_13_com_2 |
fp_issue_slot_14_com_2 | fp_issue_slot_15_com_2 | fp_bkq_0_com_2 | fp_bkq_1_com_2 | fp_bkq_2_com_2 |
fp_bkq_3_com_2 | fp_bkq_4_com_2 | fp_bkq_5_com_2 | fp_bkq_6_com_2 | fp_bkq_1_0_com_2 |
fp_bkq_1_1_com_2 | fp_bkq_1_2_com_2 | fdiv_buf_com_2 | fdiv_divsqrt_com_2 | fdiv_out_com_2 |
fpu_T_2_0_com_2 | fpu_T_2_1_com_2 | fpu_T_2_2_com_2 | fpu_T_2_3_com_2 | f_exe_reg_com_2 |
f_rrd_com_2 | int_issue_slot_0_com_2 | int_issue_slot_1_com_2 | int_issue_slot_2_com_2 | int_issue_slot_3_com_2 |
int_issue_slot_4_com_2 | int_issue_slot_5_com_2 | int_issue_slot_6_com_2 | int_issue_slot_7_com_2 | int_issue_slot_8_com_2 |
int_issue_slot_9_com_2 | int_issue_slot_10_com_2 | int_issue_slot_11_com_2 | int_issue_slot_12_com_2 | int_issue_slot_13_com_2 |
int_issue_slot_14_com_2 | int_issue_slot_15_com_2 | int_issue_slot_16_com_2 | int_issue_slot_17_com_2 | int_issue_slot_18_com_2 |
int_issue_slot_19_com_2 | mem_issue_slot_0_com_2 | mem_issue_slot_1_com_2 | mem_issue_slot_2_com_2 | mem_issue_slot_3_com_2 |
mem_issue_slot_4_com_2 | mem_issue_slot_5_com_2 | mem_issue_slot_6_com_2 | mem_issue_slot_7_com_2 | mem_issue_slot_8_com_2 |
mem_issue_slot_9_com_2 | mem_issue_slot_10_com_2 | mem_issue_slot_11_com_2 | lsu_ldq_0_com_2 | lsu_ldq_1_com_2 |
lsu_ldq_2_com_2 | lsu_ldq_3_com_2 | lsu_ldq_4_com_2 | lsu_ldq_5_com_2 | lsu_ldq_6_com_2 |
lsu_ldq_7_com_2 | lsu_ldq_8_com_2 | lsu_ldq_9_com_2 | lsu_ldq_10_com_2 | lsu_ldq_11_com_2 |
lsu_ldq_12_com_2 | lsu_ldq_13_com_2 | lsu_ldq_14_com_2 | lsu_ldq_15_com_2 | lsu_mem_com_2 |
lsu_mem_stq_com_2 | lsu_mem_retry_com_2 | lsu_mem_xcpt_com_2 | lsu_stdf_com_2 | lsu_mem_stdf_com_2 | lsu_stq_0_com_2 |
lsu_stq_1_com_2 | lsu_stq_2_com_2 | lsu_stq_3_com_2 | lsu_stq_4_com_2 | lsu_stq_5_com_2 |
lsu_stq_6_com_2 | lsu_stq_7_com_2 | lsu_stq_8_com_2 | lsu_stq_9_com_2 | lsu_stq_10_com_2 |
lsu_stq_11_com_2 | lsu_stq_12_com_2 | lsu_stq_13_com_2 | lsu_stq_14_com_2 | lsu_stq_15_com_2 |
rob__0_com_2 | rob__1_com_2 | rob__2_com_2 | rob__3_com_2 | rob__4_com_2 |
rob__5_com_2 | rob__6_com_2 | rob__7_com_2 | rob__8_com_2 | rob__9_com_2 |
rob__10_com_2 | rob__11_com_2 | rob__12_com_2 | rob__13_com_2 | rob__14_com_2 |
rob__15_com_2 | rob__16_com_2 | rob__17_com_2 | rob__18_com_2 | rob__19_com_2 |
rob__20_com_2 | rob__21_com_2 | rob__22_com_2 | rob__23_com_2 | rob__24_com_2 |
rob__25_com_2 | rob__26_com_2 | rob__27_com_2 | rob__28_com_2 | rob__29_com_2 |
rob__30_com_2 | rob__31_com_2 | rob_1_0_com_2 | rob_1_1_com_2 | rob_1_2_com_2 |
rob_1_3_com_2 | rob_1_4_com_2 | rob_1_5_com_2 | rob_1_6_com_2 | rob_1_7_com_2 |
rob_1_8_com_2 | rob_1_9_com_2 | rob_1_10_com_2 | rob_1_11_com_2 | rob_1_12_com_2 |
rob_1_13_com_2 | rob_1_14_com_2 | rob_1_15_com_2 | rob_1_16_com_2 | rob_1_17_com_2 |
rob_1_18_com_2 | rob_1_19_com_2 | rob_1_20_com_2 | rob_1_21_com_2 | rob_1_22_com_2 |
rob_1_23_com_2 | rob_1_24_com_2 | rob_1_25_com_2 | rob_1_26_com_2 | rob_1_27_com_2 |
rob_1_28_com_2 | rob_1_29_com_2 | rob_1_30_com_2 | rob_1_31_com_2 |
lsu_clr_bsy_brmask_0_com_2 |
respq_uops_0_ldq_com_2 | respq_uops_1_ldq_com_2 | respq_uops_2_ldq_com_2 | respq_uops_3_ldq_com_2 |
respq_uops_0_stq_com_2 | respq_uops_1_stq_com_2 | respq_uops_2_stq_com_2 | respq_uops_3_stq_com_2 |
mmios_0_ldq_com_2 | mmios_0_stq_com_2 |
mshrs_0_rpq_uops_0_ldq_com_2 | mshrs_0_rpq_uops_1_ldq_com_2 | mshrs_0_rpq_uops_2_ldq_com_2 | mshrs_0_rpq_uops_3_ldq_com_2 |
mshrs_0_rpq_uops_4_ldq_com_2 | mshrs_0_rpq_uops_5_ldq_com_2 | mshrs_0_rpq_uops_6_ldq_com_2 | mshrs_0_rpq_uops_7_ldq_com_2 |
mshrs_0_rpq_uops_8_ldq_com_2 | mshrs_0_rpq_uops_9_ldq_com_2 | mshrs_0_rpq_uops_10_ldq_com_2 | mshrs_0_rpq_uops_11_ldq_com_2 |
mshrs_0_rpq_uops_12_ldq_com_2 | mshrs_0_rpq_uops_13_ldq_com_2 | mshrs_0_rpq_uops_14_ldq_com_2 | mshrs_0_rpq_uops_15_ldq_com_2 |
mshrs_0_rpq_uops_0_stq_com_2 | mshrs_0_rpq_uops_1_stq_com_2 | mshrs_0_rpq_uops_2_stq_com_2 | mshrs_0_rpq_uops_3_stq_com_2 |
mshrs_0_rpq_uops_4_stq_com_2 | mshrs_0_rpq_uops_5_stq_com_2 | mshrs_0_rpq_uops_6_stq_com_2 | mshrs_0_rpq_uops_7_stq_com_2 |
mshrs_0_rpq_uops_8_stq_com_2 | mshrs_0_rpq_uops_9_stq_com_2 | mshrs_0_rpq_uops_10_stq_com_2 | mshrs_0_rpq_uops_11_stq_com_2 |
mshrs_0_rpq_uops_12_stq_com_2 | mshrs_0_rpq_uops_13_stq_com_2 | mshrs_0_rpq_uops_14_stq_com_2 | mshrs_0_rpq_uops_15_stq_com_2 |
mshrs_1_rpq_uops_0_ldq_com_2 | mshrs_1_rpq_uops_1_ldq_com_2 | mshrs_1_rpq_uops_2_ldq_com_2 | mshrs_1_rpq_uops_3_ldq_com_2 |
mshrs_1_rpq_uops_4_ldq_com_2 | mshrs_1_rpq_uops_5_ldq_com_2 | mshrs_1_rpq_uops_6_ldq_com_2 | mshrs_1_rpq_uops_7_ldq_com_2 |
mshrs_1_rpq_uops_8_ldq_com_2 | mshrs_1_rpq_uops_9_ldq_com_2 | mshrs_1_rpq_uops_10_ldq_com_2 | mshrs_1_rpq_uops_11_ldq_com_2 |
mshrs_1_rpq_uops_12_ldq_com_2 | mshrs_1_rpq_uops_13_ldq_com_2 | mshrs_1_rpq_uops_14_ldq_com_2 | mshrs_1_rpq_uops_15_ldq_com_2 |
mshrs_1_rpq_uops_0_stq_com_2 | mshrs_1_rpq_uops_1_stq_com_2 | mshrs_1_rpq_uops_2_stq_com_2 | mshrs_1_rpq_uops_3_stq_com_2 |
mshrs_1_rpq_uops_4_stq_com_2 | mshrs_1_rpq_uops_5_stq_com_2 | mshrs_1_rpq_uops_6_stq_com_2 | mshrs_1_rpq_uops_7_stq_com_2 |
mshrs_1_rpq_uops_8_stq_com_2 | mshrs_1_rpq_uops_9_stq_com_2 | mshrs_1_rpq_uops_10_stq_com_2 | mshrs_1_rpq_uops_11_stq_com_2 |
mshrs_1_rpq_uops_12_stq_com_2 | mshrs_1_rpq_uops_13_stq_com_2 | mshrs_1_rpq_uops_14_stq_com_2 | mshrs_1_rpq_uops_15_stq_com_2 |
lsu_r_xcpt_com_2 | dcache_s1_req_ldq_com_2 | dcache_s1_req_stq_com_2 | dcache_s2_req_ldq_com_2 | dcache_s2_req_stq_com_2;

//****************************************************//
//************ME-5(Consistent Speculation Tag)********//

	wire [11:0] uncommitable_masks;
	wire ME_5;

  //combine uncommittable masks of both SoCs
	assign uncommitable_masks = uncommitable_masks_1 & uncommitable_masks_2;

  //all uncommittable masks must have the same bit set as root_br_mask
  //this means that every uncommittable instruction is speculated under the instruction at root_ID
	assign ME_5 = ( (uncommitable_masks & root_br_mask) == root_br_mask );

//****************************************************//
//************ME-6(Consistent Spawn Tag)**************//


	wire ME_6_1;
	wire ME_6_2;
	wire ME_6;

	//if a branch is resolved, its ROB ID must either be in the committable set or it must have a spawn tag greater than T_main
	assign ME_6_1 = ( ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.brinfos_0_uop_rob_idx) != 1'b1 ) ?
											isSpawnTagGreater(soc1.core.brinfos_0_uop_br_tag, commitable_masks_1) : 1'b1) &&
									( ( isRobIdCommitable(soc1.core.rob.rob_head, root_id, soc1.core.brinfos_1_uop_rob_idx) != 1'b1 ) ?
											isSpawnTagGreater(soc1.core.brinfos_1_uop_br_tag, commitable_masks_1) : 1'b1);

	assign ME_6_2 = ( ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.brinfos_0_uop_rob_idx) != 1'b1 ) ?
											isSpawnTagGreater(soc2.core.brinfos_0_uop_br_tag, commitable_masks_2) : 1'b1) &&
									( ( isRobIdCommitable(soc2.core.rob.rob_head, root_id, soc2.core.brinfos_1_uop_rob_idx) != 1'b1 ) ?
											isSpawnTagGreater(soc2.core.brinfos_1_uop_br_tag, commitable_masks_2) : 1'b1);

	assign ME_6 = ME_6_1 && ME_6_2;

//****************************************************//
//************MicroEquivalence************************//

	wire microequivalence;

	assign microequivalence = ME_1 && ME_2 && ME_3 && ME_4 && ME_5 && ME_6;

//****************************************************//
//************L-Alert Definition**********************//

	wire lAlert;

	assign lAlert = soc1.core.rob.io_commit_valids_0 != soc2.core.rob.io_commit_valids_0 || soc1.core.rob.io_commit_valids_1 != soc2.core.rob.io_commit_valids_1;

	wire lAlert_earlyAlarm;
	assign lAlert_earlyAlarm = mispred_flag_1 != mispred_flag_2;

endmodule

	// This is based on the assumption that the ability of attacker to measure
	// time is synchronized with instruction commit
	// in case of RISC-V csr timers: csr reads are synchronizing instructions
	// in case of external timers: signaling the outside world should never be
	// done speculatively
	// if timer reading is not synchronized: the upec L-Alert definition becomes
	// even more simple, i.e., every physical register can be considered
	// architectural, but it becomes extremely hard to have a secure variant
	// it may not also make sense to allow SW to measure time in such a fine
	// grained manner
