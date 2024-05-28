`define NUM_INSTRUCTIONS 80

class user_arith_test_sequence extends uvm_sequence #(instruction);

    instruction moves[20];
    instruction ariths[`NUM_INSTRUCTIONS];
    instruction halt;

    function new(string name="user_arith_test_sequence");
        super.new(name);
    endfunction

    `uvm_object_utils(user_arith_test_sequence)

    virtual task body();
        int i;
        foreach (moves[i])
          begin
              `uvm_do_with(moves[i], {
                  (moves[i].instr.sub == tmicro$tmicro::S$move_instr &&
                   moves[i].instr.R$move_instr.sub == tmicro$move_instr::S$mvi_wreg_word &&
                   moves[i].instr.R$move_instr.R$mvi_wreg_word.P$rr.sub == tmicro$wreg::S$r_reg);
              });
          end
        foreach (ariths[i])
          begin
              `uvm_do_with(ariths[i], {
                  (ariths[i].instr.sub == tmicro$tmicro::S$alu_instr &&
                   ariths[i].instr.R$alu_instr.sub == tmicro$alu_instr::S$alu_rrr &&
                   ariths[i].instr.R$alu_instr.R$alu_rrr.P$op.val == tmicro$alu_op$0::E$add &&
                   ariths[i].instr.R$alu_instr.R$alu_rrr.P$t.P$r.val inside {[0:3]});
              });
          end

        `uvm_do_with(halt, {
            (halt.instr.sub == tmicro$tmicro::S$control_instr &&
             halt.instr.R$control_instr.sub == tmicro$control_instr::S$halt);
        });

    endtask

endclass
