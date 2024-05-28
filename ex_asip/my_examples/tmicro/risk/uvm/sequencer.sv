class instruction_sequencer extends uvm_sequencer #(instruction);

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    `uvm_component_utils(instruction_sequencer)

endclass
