# @lang=tcl @ts=2
if {[get_mode] != "mv"} {
  puts "This script needs to be called in MV mode."
        puts "You can switch to MV mode after you have elaborated and compiled the design."
  puts "Then, switch to MV mode and call this script again."
        return
}
puts "The tool will now be set up so that only IPC checks are performed."
set_check_option -default
set_check_option -verbose -approver1_steps 1 -approver2_steps 0 -approver3_steps 0 -approver4_steps 0 -disprover1_steps 0 -prover1_steps 0 -prover2_steps 0 
puts "(Done.)"
