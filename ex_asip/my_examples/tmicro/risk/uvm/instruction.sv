`include "tmicro-classes.sv"

class instruction extends uvm_sequence_item;
    rand tmicro$tmicro instr;
    `uvm_object_utils_begin(instruction)
    `uvm_object_utils_end
    virtual function string print(string prefix = "");
        $sformat(print, "  \"%s\"", instr.get_bits_and_syntax());
    endfunction
    function new();
        instr = new;
    endfunction
endclass
