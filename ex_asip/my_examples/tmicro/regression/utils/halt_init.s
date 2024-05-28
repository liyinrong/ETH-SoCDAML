/*
-- File : halt_init.s
-- Contents : call halt at end of simulation.
-- Copyright (c) 2014 Synopsys Inc.
*/

.undef global text _main 

.text global 0 _main_init
      cl _main
      nop
      nop
      nop
      halt
      rt
