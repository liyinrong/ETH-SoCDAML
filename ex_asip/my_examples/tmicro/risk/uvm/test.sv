import uvm_pkg::*;
`include "instruction.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "user_test_sequences.sv"

class instruction_testbench extends uvm_env;
    `uvm_component_utils(instruction_testbench)
    instruction_sequencer sequencer;
    instruction_driver driver;
    user_test_sequences seq;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        sequencer = new("sequencer", this);
        driver = new("driver", this);
        seq = new();
        driver.seq_item_port.connect(sequencer.seq_item_export);
    endfunction : new

    task run_phase(uvm_phase phase);
        int i;
        phase.raise_objection(this);
        fork
            srandom(48594); // set a random seed - can be given at commandline or use +ntb_random_seed
            seq.start(sequencer);
        join_none
        #0;
        wait fork;
        phase.drop_objection(this);
    endtask
endclass


module top;
   instruction_testbench tb;
   initial begin
       tb = new("instruction_testbench", null);
       run_test();
   end
endmodule
