

module TLMem
	# ( parameter PROTECTED_ADDR = 32'h8abcde00 )
	( 
  input         clock, // @[:freechips.rocketchip.system.MyConfig.fir@148020.4]
  input         reset, // @[:freechips.rocketchip.system.MyConfig.fir@148021.4]
  input [63:0]  data,
  input [63:0]  secret,
  output       auto_sync_xing_out_a_ready, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input        auto_sync_xing_out_a_valid, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [2:0]  auto_sync_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [2:0]  auto_sync_xing_out_a_bits_param, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [3:0]  auto_sync_xing_out_a_bits_size, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [3:0]  auto_sync_xing_out_a_bits_source, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [31:0] auto_sync_xing_out_a_bits_address, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [7:0]  auto_sync_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [63:0] auto_sync_xing_out_a_bits_data, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input        auto_sync_xing_out_b_ready, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output         auto_sync_xing_out_b_valid, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [1:0]  auto_sync_xing_out_b_bits_param, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [31:0] auto_sync_xing_out_b_bits_address, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output         auto_sync_xing_out_c_ready, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input        auto_sync_xing_out_c_valid, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [2:0]  auto_sync_xing_out_c_bits_opcode, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [3:0]  auto_sync_xing_out_c_bits_size, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [3:0]  auto_sync_xing_out_c_bits_source, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [31:0] auto_sync_xing_out_c_bits_address, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [63:0] auto_sync_xing_out_c_bits_data, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input        auto_sync_xing_out_d_ready, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output         auto_sync_xing_out_d_valid, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [2:0]  auto_sync_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [1:0]  auto_sync_xing_out_d_bits_param, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [3:0]  auto_sync_xing_out_d_bits_size, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [3:0]  auto_sync_xing_out_d_bits_source, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [2:0]  auto_sync_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output  [63:0] auto_sync_xing_out_d_bits_data, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output         auto_sync_xing_out_d_bits_error, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  output         auto_sync_xing_out_e_ready, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input        auto_sync_xing_out_e_valid, // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
  input [2:0]  auto_sync_xing_out_e_bits_sink // @[:freechips.rocketchip.system.MyConfig.fir@148022.4]
);
  parameter IDLE = 4'h0, ACCESS_ACK_DATA = 4'h1, ACCESS_ACK = 4'h2, HINT_ACK = 4'h3, 
	     GRANT_DATA = 4'h4, GRANT = 4'h5, RELEASE_ACK = 4'h6, ERROR = 4'h7;
  parameter A_GET = 3'h4, D_ACCESS_ACK_DATA = 3'h1, A_PUT_FULL = 3'h0, A_PUT_PARTIAL = 3'h1, 
	     D_ACCESS_ACK = 3'h0, A_ARITHMETIC = 3'h2, A_LOGICAL = 3'h3, A_INTENT = 3'h5, 
	      D_HINT_ACK = 3'h2, A_ACQUIRE = 3'h6, D_GRANT = 3'h4, D_GRANT_DATA = 3'h5, 
	       C_RELEASE = 3'h6, C_RELEASE_DATA = 3'h7, D_RELEASE_ACK = 3'h6;
  parameter N_TO_B = 3'h0, N_TO_T = 3'h1, B_TO_T = 3'h2;
  parameter TO_B = 3'h1, TO_T = 3'h0; 


  reg [3:0] state;
  reg [15:0] counter;
//  reg [3:0] ptr;
  reg [2:0] d_opcode;
  reg [15:0] a_size;
  reg [31:0] a_addr;
//  reg [31:0] a_data;
  reg [2:0] a_param;
//  reg [31:0] c_addr;
//  reg [31:0] c_data;
//  reg c_wen;
  reg [3:0] c_size;
  reg [3:0] a_size_2;
  reg [3:0] a_source;
  reg [3:0] c_source;

//  reg [31:0] secret_word;
//  reg [31:0] secret_line[15:0];

  

  assign auto_sync_xing_out_a_ready = (state == IDLE || state == ACCESS_ACK);

  assign auto_sync_xing_out_b_valid = 1'b0;
  assign auto_sync_xing_out_b_bits_param = 2'h0;
  assign auto_sync_xing_out_b_bits_address = 32'h0;

  assign auto_sync_xing_out_c_ready = (state == IDLE || state == RELEASE_ACK);

  assign auto_sync_xing_out_d_valid = (state == ERROR || state == ACCESS_ACK_DATA || (state == ACCESS_ACK && auto_sync_xing_out_a_valid == 1'b0) || 
					state == HINT_ACK || state == GRANT_DATA || state == GRANT || (state == RELEASE_ACK && auto_sync_xing_out_c_valid == 1'b0));

  assign auto_sync_xing_out_d_bits_opcode = d_opcode;

  assign auto_sync_xing_out_d_bits_param = (state == GRANT || state == GRANT_DATA) ? ( (a_param == N_TO_B) ? TO_B : TO_T ) : 3'h0;

  assign auto_sync_xing_out_d_bits_size = (state == GRANT || state == GRANT_DATA || state == ACCESS_ACK || state == ACCESS_ACK_DATA || state == HINT_ACK) ? a_size_2 : c_size;

  assign auto_sync_xing_out_d_bits_source = (state == GRANT || state == GRANT_DATA || state == ACCESS_ACK || state == ACCESS_ACK_DATA || state == HINT_ACK) ? a_source : c_source;

  assign auto_sync_xing_out_d_bits_sink = 3'h0;

  assign auto_sync_xing_out_d_bits_data = ((state == ACCESS_ACK_DATA || state == GRANT_DATA) && a_addr == PROTECTED_ADDR) ? secret : data;

  assign auto_sync_xing_out_d_bits_error = (state == ERROR);

  assign auto_sync_xing_out_e_ready = (state == IDLE); 
 
  always @(posedge clock) begin
    if (reset) begin
      state <= IDLE;
    end
    else begin
      if (state == IDLE) begin
	if (auto_sync_xing_out_a_valid == 1'b1 && auto_sync_xing_out_c_valid == 1'b1) begin
	  state <= ERROR;
	end
	else if (auto_sync_xing_out_a_valid == 1'b1) begin
	  if (auto_sync_xing_out_a_bits_opcode == A_ARITHMETIC || auto_sync_xing_out_a_bits_opcode == A_LOGICAL || auto_sync_xing_out_a_bits_opcode == A_GET) begin
	    state <= ACCESS_ACK_DATA; 
	  end
	  else if (auto_sync_xing_out_a_bits_opcode == A_PUT_FULL || auto_sync_xing_out_a_bits_opcode == A_PUT_PARTIAL) begin
	    state <= ACCESS_ACK;
	  end
	  else if (auto_sync_xing_out_a_bits_opcode == A_INTENT) begin 
	    state <= HINT_ACK;
	  end
	  else if (auto_sync_xing_out_a_bits_opcode == A_ACQUIRE) begin
	    if (auto_sync_xing_out_a_bits_param == N_TO_B || auto_sync_xing_out_a_bits_param == N_TO_T) begin
	      state <= GRANT_DATA;
	    end
	    else begin
	      state <= GRANT;
	    end
	  end
	end
	else if (auto_sync_xing_out_c_valid == 1'b1) begin 
	  if (auto_sync_xing_out_c_bits_opcode == C_RELEASE || auto_sync_xing_out_c_bits_opcode == C_RELEASE_DATA) begin
	    state <= RELEASE_ACK;
	  end
	end
      end
      else if (state == ERROR) begin
	state <= IDLE;
      end
      else if (state == ACCESS_ACK_DATA) begin
	if (counter == a_size) begin
	  state <= IDLE;
	end
      end
      else if (state == ACCESS_ACK) begin
	if (auto_sync_xing_out_a_valid == 1'b0) begin
	  state <= IDLE;
	end
      end
      else if (state == HINT_ACK) begin
	state <= IDLE;
      end
      else if (state == GRANT_DATA) begin
	if (counter == a_size) begin
	  state <= IDLE;
	end
      end
      else if (state == GRANT) begin
	state <= IDLE;
      end
      else if (state == RELEASE_ACK) begin
	if (auto_sync_xing_out_c_valid == 1'b0) begin
	  state <= IDLE;
	end
      end
    end
  end

  always @(posedge clock) begin
    if (reset) begin
      counter <= 16'h0;
    end
    else begin
      if (state == IDLE) begin
	counter <= 16'h0;
      end
      else if (state == ACCESS_ACK_DATA || state == GRANT_DATA) begin
	counter <= counter + 16'h1;
      end
    end
  end

  always @(posedge clock) begin
    if (reset) begin
      a_size <= 4'h0;
      a_addr <= 32'h0;
//      a_data <= 32'h0;
      a_param <= 3'h0;
//      c_addr <= 32'h0;
//      c_data <= 32'h0;
//      c_wen <= 1'b0;
      c_size <= 4'h0;
      a_size_2 <= 4'h0;
      a_source <= 4'h0;
      c_source <= 4'h0;
    end
    else begin
      if (auto_sync_xing_out_a_valid == 1'b1) begin
	a_size <= (1 << (auto_sync_xing_out_a_bits_size - 4'h2)) - 1;
	a_size_2 <= auto_sync_xing_out_a_bits_size;
	a_addr <= auto_sync_xing_out_a_bits_address;
//	a_data <= auto_sync_xing_out_a_bits_data;
	a_param <= auto_sync_xing_out_a_bits_param;
	a_source <= auto_sync_xing_out_a_bits_source;
      end
      if (auto_sync_xing_out_c_valid == 1'b1) begin
	c_size <= auto_sync_xing_out_c_bits_size;
//	c_addr <= auto_sync_xing_out_c_bits_address;
//	c_data <= auto_sync_xing_out_c_bits_data;
	c_source <= auto_sync_xing_out_c_bits_source;
//	c_wen <= (auto_sync_xing_out_c_bits_opcode == C_RELEASE_DATA);
      end
    end
  end

/*  always @(posedge clock) begin
    if (reset) begin
      ptr <= 4'h0;
    end
    else begin
      if (state == ACCESS_ACK && a_addr == PROTECTED_ADDR) begin
	secret_word <= a_data;
      end
      if (state == RELEASE_ACK && c_addr == PROTECTED_ADDR && c_wen) begin
	secret_line[ptr] <= c_data;
	ptr <= ptr + 4'h1;
      end
      if (state == IDLE) begin
	ptr <= 4'h0;
      end
    end
  end
*/
  always @(state) begin
    case (state) 
      ACCESS_ACK_DATA: d_opcode = D_ACCESS_ACK_DATA;
      ACCESS_ACK: d_opcode = D_ACCESS_ACK;
      HINT_ACK: d_opcode = D_HINT_ACK;
      GRANT: d_opcode = D_GRANT;
      GRANT_DATA: d_opcode = D_GRANT_DATA;
      RELEASE_ACK: d_opcode = D_RELEASE_ACK;
      default : d_opcode = 3'h0;
    endcase;
  end
endmodule;







