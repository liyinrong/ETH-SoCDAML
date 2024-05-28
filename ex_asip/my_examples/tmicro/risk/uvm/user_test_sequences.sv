`include "user_arith_test_sequence.sv"
`define NUM_SEQUENCES 1

class user_test_sequences extends uvm_sequence #(instruction);
    int repeat_cnt = `NUM_SEQUENCES;

    user_arith_test_sequence  seq_arith;

    function new(string name="user_test_sequences");
        super.new(name);
        seq_arith = new();
    endfunction

    `uvm_object_utils_begin(user_test_sequences)
    `uvm_field_int(repeat_cnt, UVM_ALL_ON)
    `uvm_object_utils_end

    virtual task body();
        repeat (repeat_cnt)
          begin
              `uvm_do(seq_arith)
          end
    endtask

endclass
