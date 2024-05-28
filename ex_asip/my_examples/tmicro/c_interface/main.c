#include "Mdl_tmicro.h"
#include "Mdl_tmicro_uicore.h"
#include "checkers_api_l_funcs.h"

void check_errors()
{
    int errs = chkapi_errorsp->state() == chkapi_ERR;
    for(std::vector<Chkapi_error>::const_iterator i = chkapi_errorsp->errors.begin(); i != chkapi_errorsp->errors.end(); i++) {
        if (i->return_code != chkapi_MSG)
            std::cerr << *i << std::endl;
        else
            std::cout << *i << std::endl;
    }
    if (errs)
        exit(1);
    chkapi_errorsp->reset();
}

int main()
{
    // Creating an ISS
    tmicro_uicore* uicore = new tmicro_uicore(0,0);
    // Loading program
    int dw2 = 1; // Need Dwarf2 debug info for hosted I/O, set to 0 if you don't need debug info.
    if (chkapi_l_program_load(uicore, "../sort/Debug/sort", dw2) != chkapi_OK)
        check_errors();
    // Step
    if (chkapi_l_program_step_master(uicore, 3000) != chkapi_OK)
        check_errors();
    // Show results
    VBitWrapper val(16, 1, 0);
    Checkers_stor_addr sta("DM", 8192, 1, at_addr);
    for(int i = 0; i < 10; i++) {
        if (chkapi_l_storage_get_vbit(uicore, sta, val) != chkapi_OK)
            check_errors();
        std::cout << "some_array[" << i << "] = " << val.to_int() << std::endl;
        sta.address++;
    }
    // Closing
    if (chkapi_l_model_close(uicore) != chkapi_OK)
        check_errors();
    // Done.
    return 0;
}
