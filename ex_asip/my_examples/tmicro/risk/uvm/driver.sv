class instruction_driver extends uvm_driver #(instruction);

    integer out_file;

    `uvm_component_utils(instruction_driver)

    // Constructor
    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    task run_phase (uvm_phase phase);
        string filename = "risk_tmicro_uvm.ras";
        $display("Generating instructions in \"%s\"", filename);
        out_file = $fopen(filename);
        $fdisplay (out_file,".text_segment PM 0");
        forever begin
            seq_item_port.get_next_item(req);
            $fdisplay (out_file,"%s", req.print());
            seq_item_port.item_done();
        end
    endtask : run_phase

    function void report_phase (uvm_phase phase);
        $fclose (out_file);
    endfunction : report_phase

endclass
