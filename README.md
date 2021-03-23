# upec-boom-verification-suite
This repository contains the verification suite for verifying Berkley Out-of-Order Machine (BOOM) against transient execution attacks based on the Unique Program Execution Checking (UPEC) approach.

## BOOM
The Berkeley Out-of-Order Machine (BOOM) is a synthesizable and parameterizable open-source RISC-V out-of-order core written in the Chisel hardware construction language and is developed by the UC Berkeley Architecture Research group.  
The documentation for BOOM can be found here : [https://docs.boom-core.org/en/latest/index.html](https://docs.boom-core.org/en/latest/index.html)

## Microequivalence for BOOM
In our experiment we use the MediumBoomConfig to generate the core. In this configuration the core can issue two instructions per clock cycle and the reorder buffer(ROB) consists of two banks each holding up to 32 entries. The core has two branch units that compute if the branch predictions were correct.
Every instruction has a 4-bit branch tag (br_tag) that specifies the level of speculation the instruction will create, in case if it is a speculation initiating (SPI) instruction.
Each instruction also has a 12-bit branch mask (br_mask), that specifies on which preceding branch instructions this instruction depends. Each set bit in the branch mask represents a dependency to the branch with the level of speculation corresponding to the position of the bit. This means, if a branch resolves as mispredicted all instructions that have the corresponding bit in their branch mask set, need to be discarded. If a branch resolves as correctly predicted the bit can simply be cleared.
Since most of the microequivalence constraints can be implemented exactly as explained in the given template, we focus on the needed adjustments for BOOM:
### ME-1
If the branch instruction at root\_id is pending, its busy and valid bits must be set.

### ME-2
After misprediction of the instruction at root\_id it is necessary to check, for both ROB banks, if each instruction is either in the committable set or it is invalidated.

### ME-3
Since the ROB can only commit exactly two instructions at the same time, the ROB row needs to be checked.

### ME-4
Exactly as in the template.

### ME-5 and ME-6
First it is necessary to find **all** buffers in the pipeline that can hold an instruction. For every buffer we create a wire for the commitable mask and the uncommittable mask. Then for all these buffers it is necessary to determine if they hold an instruction in the committable or uncommittable set of the ROB using the ROB ID of the instruction.
If the instruction is in the committable set, its branch mask is stored in the wire for the committable mask and the wire for the uncommittable mask is set to 12'hfff (since we will later use the & operator on all the uncommittable masks).
If the instruction is in the uncommittable set, its branch mask is stored in the wire for the uncommittable mask and the wire for the committable mask is set to 12'h0 (since we will later use the | operator on all the committable masks).
Some buffers do not store the ROB ID of the instruction, but they have a flag indicating that they used the load or store queue and the according index in that queue. Therefore it is necessary to obtain the ROB ID of these instruction from the load or store queue.
After all wires are assigned, all commitable masks are combined using the bitwise OR-operator and all uncommittable masks are combined using the bitwise AND-operator.
For ME-5 to hold, the bitwise conjunction of the uncommittable masks and the branch mask of root\_id must be equal to the branch mask of root\_id. This means that all instructions in the uncommittable set must have a speculation level below the speculation level of the instruction at root\_id.
For ME-6 to hold, we need to check for every mispredicting instruction that is not in the committable set, if its spawn tag is greater than the bitwise disjunction of the committable masks.

## How to run the code
For the experiment we used the OneSpin 360 verification tool. After starting OneSpin the following commands need to be executed in the OneSpin shell:
> source run.tcl
> source pure_ipc.tcl

Then the property can be checked and it will fail, since the design is not secure.
