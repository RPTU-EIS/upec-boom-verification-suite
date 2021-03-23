//Template for UPEC for Out-of-Order Processors

//////////////////////////////////////////////////
//Definitions
//////////////////////////////////////////////////
//root_ID: ROB ID of the instruction that initiates the transient sequence (symbolic value)
//misprediction_occurred: signal that stays high after a misprediction of root_ID occurred
//misprediction_event: signal that stays high for one clock cycle after misprediction
//spec_tag: integer identifier for the level of speculation of each instruction
//spawn_tag: integer identifier for the next level of speculation after dispatching a branch
//T_main: spawn tag of the instruction at root_ID
//is_SPI():check if a given rob_entry holds a valid SPI instruction (an instruction that initiates speculation)
//PU: prediction unit (for example execution unit for branch instructions)


//////////////////////////////////////////////////
//Macros and Functions
//////////////////////////////////////////////////
//To be refined based on the specific design

//Reorder buffer signals
`define rob_1 \
	;

`define rob_1_head \
	;

`define rob_1_tail \
	;

//Prediction unit signals
`define PU_1_mispred \
	;

`define PU_1_spawn_tag \
	;

`define PU_1_spec_tag \
	;

`define PU_1_valid \
	;

`define PU_1_rob_ID \
	;

`define PU_2_mispred \
	;

`define PU_2_spawn_tag \
	;

`define PU_2_spec_tag \
	;

`define PU_2_valid \
	;

`define PU_2_rob_ID \
	;

//Functional Units
//FU: Any unit that execute a micro-operation in the pipeline (e.g. ALU,Load/Store Unit)
//Use template to create macros for each FU

//FU Template:ALU
`define ALU_1_rob_ID \
	;
`define ALU_1_inst_op1 \
	;
`define ALU_1_inst_op2 \
	;

`define ALU_2_rob_ID \
	;
`define ALU_2_inst_op1 \
	;
`define ALU_2_inst_op2 \
	;

//misprediction_occurred: signal that stays high after a misprediction of root_ID occurred
`define misprediction_occurred \
	;

//misprediction_event: signal that stays high for one clock cycle after misprediction
`define misprediction_event \
	;

//root_ID: ROB ID of the instruction that initiates the transient sequence (symbolic value)
`define root_ID \
	;

//T_main: spawn tag of the instruction at root_ID
//spawn_tag: integer identifier for the next level of speculation after dispatching a branch
`define T_main \
	;


//check if a given rob_entry holds a valid SPI instruction (an instruction that initiates speculation)
//return true if so, else false
function is_SPI(int ROB_ID);
	is_SPI = `rob_1[ROB_ID].inst_type == "BRANCH";
end function;

//is_pending: check for a given rob_entry, if the instruction is still valid and waiting to be executed
function is_pending(int ROB_ID);
	is_pending = `rob_1[ROB_ID].valid && `rob_1[ROB_ID].busy;
end function;

//is_pending: check for a given rob_entry, if the instruction is valid
function is_valid(int ROB_ID);
	is_pending = `rob_1[ROB_ID].valid;
end function;


//check if the uncommittable set is invalidated
//return true if so, else false
function uncommittable_set_invalidated();
	//check if all entries from root_ID to rob_head-1 are invalidated
	for (int i=`root_ID; i != `rob_1_head; i=(i+1)%`rob_1_size ) begin
		if(is_valid(i))begin
			return 1'b0;
		end
	end
	return 1'b1;
end function;

//Check if the given ID is in the uncommitable set of the ROB
//return true if so, else false
function is_uncommittable(int rob_ID);
	if (`root_ID > `rob_1_head) begin
		return rob_ID > `root_ID || rob_ID < `rob_1_head;
	end
	if (`root_ID < `rob_1_head) begin
		return rob_ID < `root_ID && rob_ID > `rob_1_head;
	end
	if (`root_ID == `rob_1_head) begin
		return rob_ID != `rob_1_head;
	end
end function;

//Check if the given ID is in the commitable set of the ROB
//return true if so, else false
function is_committable(int rob_ID);
	return !is_uncommittable(rob_ID);
end


//check if the speculation tags are consistent (see ME-5)
//IMPORTANT: Look into ALL book-keeping buffers of the pipeline (ROB, reservation stations, FU pipelines)
function spec_tag_consistency();
	for(int i=0; i<$size(rob_1); i++)begin
		if(is_uncommittable(i)begin
			//if the entry's speculation level is not below the speculation level of T_main, return false
			if( `rob_1[i].spec_tag is not below T_main ) begin
			// This check is design specific, and depends on the encoding scheme for
			// speculation tags
				return 1'b0;
			end
		end
	end
	//entries in reservation stations
	foreach(reservation station)begin
		//Check each entry
		foreach(entry)begin
			//for each entry check if the instruction is in the uncommittable set
			if( is_uncommittable(entry.rob_ID) ) begin
				//if the entry's speculation level is not below the speculation level of T_main, return false
				if( entry[i].spec_tag is not below T_main )begin
				// This check is design specific, and depends on the encoding scheme for
				// speculation tags
					return 1'b0;
				end
			end
		end
	end

	//TODO: check all the other book-keeping buffers in the pipeline

	//if all speculation tags are consistent return true
	return 1'b1;
end function;



//check if the given spawn tag is uncommittable (see ME-6)
//IMPORTANT: Look into ALL book-keeping buffers of the pipeline (ROB, reservation stations, FU pipelines)
function is_uncommittable_tag(int spawn_tag);
	for(int i=0; i<$size(rob_1); i++)begin
		if(is_committable(i)begin
			//if the entry's speculation level is not above the speculation level of spawn_tag,
			//which makes the spawn_tag a committable tag, return false
			if( `rob_1[i].spec_tag is not above spawn_tag ) begin
			// This check is design specific, and depends on the encoding scheme for
			// speculation tags
				return 1'b0;
			end
		end
	end
	//entries in reservation stations
	foreach(reservation station)begin
		//Check each entry
		foreach(entry)begin
			//if the entry's speculation level is not above the speculation level of spawn_tag,
			//which makes the spawn_tag a committable tag, return false
			if( is_committable(entry.rob_ID) ) begin
				//if the entry's speculation level is not below the speculation level of T_main, return false
				if( entry[i].spec_tag is not above spawn_tag )begin
				// This check is design specific, and depends on the encoding scheme for
				// speculation tags
					return 1'b0;
				end
			end
		end
	end
	//TODO: check all the other book-keeping buffers in the pipeline

	//if all speculation tags are consistent return true
	return 1'b1;

end function;

//ME1 (Main Branch Pending)
`define ME1 \
	//i) ROB slot with root_ID contains an SPI Instruction
	(`misprediction_occurred || is_SPI(`root_ID)) && \
	//ii) SPI is mispredicted
	//SPI is mispredicted if it is never correct predicted
	(`misprediction_occurred || !(`PU_1_valid == 1'b1 && `PU_1_mispred == 1'b0 && `PU_1_spawn_tag == `T_main)) && \
	//iii) SPI remains valid(pending) until misprediction is signaled by the prediction unit
	(`misprediction_occurred || is_pending(`root_ID)) \
	;

//ME2 (Uncommittable Slots Invalidated)
`define ME2 \
	//after misprediction of SPI, in the next clock cycle every ROB slot in the uncommittable set is invalidated
	!`misprediction_event || uncommittable_set_invalidated()  \
	;

//ME3 (ROB tail Consistency)
`define ME3 \
	//until misprediction, ROB tail points to an uncommittable ROB slot
	`misprediction_occurred || is_uncommittable(`rob_tail) \
	;

//ME4 (FU Consistency)
`define ME4 \
	//if ROB_IDs of the instructions currently being executed are equal, and commitable,
	//the operands must be equal
	//TODO:Extend the macro to handle EVERY functional unit:
	//Example: ALU
	( (!`misprediction_occurred && `ALU_1_rob_ID == `ALU_2_rob_ID && is_committable(`ALU_1_rob_ID))) ?
	  (`ALU_1_inst_op1 == `ALU_2_inst_op1 && `ALU_1_inst_op2 == `ALU_2_inst_op2 ) : `true) \
	;

//ME5 (Consistent Speculation Tag)
`define ME5 \
	//every in-flight instruction with ROB_ID in uncommittable set
	//must have a speculation level below the speculation level of T_main
	//i.e. instuction with uncommitable tags must be discarded after misprediction on T_main
	(`misprediction_occurred || spec_tag_consistency())\
	;

//ME6 (Consistent Spawn Tag)
`define ME6 \
	//Branch instructions in the transient sequence lead to a speculation level below the speculation level of T_main.
	//This is meant to ensure a misprediction on a transient branch cannot
	//affect the main sequence.
	(`misprediction_occurred ||
	( is_uncommittable(`PU_1_rob_ID) ? is_uncommittable_tag(`PU_1_spawn_tag) : `true ) && \
	( is_uncommittable(`PU_2_rob_ID) ? is_uncommittable_tag(`PU_2_spawn_tag) : `true ) \
	;

//Microequivalence (ME)
`define microequivalence \
	`ME1 && `ME2 && `ME3 && `ME4 && `ME5 && `ME6;

//////////////////////////////////////////////////
//UPEC Property
//////////////////////////////////////////////////

//set of all microarchitectural state variables for both SoCs
`define micro_soc_state1 \
	;
`define micro_soc_state2 \
	;

//soc_state1 and soc_state2 (to be refined through the UPEC iterative process)
`define soc_state1 \
	;
`define soc_state2 \
	;

//Define protection of secret
`define secret_data_protected\
	// if core is in USER_MODE, raise an exception if secret is accessed
	// if core is in PRIVILEGE_MODE, any load targeting the secret must be on
	// a mis-speculated branch
	;

`define k \
	// length of the proof time window
	;

property UPEC;
	`micro_soc_state1 == `micro_soc_state2 &&
	(`secret_data_protected && `microequivalence) [*`k] // This assumption must hold on every clock cycle of the proof [t , t+k]
	|->
	`soc_state1 == `soc_state2;
end property
