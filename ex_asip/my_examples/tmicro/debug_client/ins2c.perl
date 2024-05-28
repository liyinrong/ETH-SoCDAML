
# PERL script to translate disassembly file to C table of instructions.

print "\n";
print "/*\n";
print "-- File : pdc_register_moves.c\n";
print "--\n";
print "-- Contents : Tables with processor specific register move instruction codes.\n";
print "--\n";
print "-- NOTE: this file is generated AUTOMATICALLY from the file pdc_register_moves.s\n";
print "--       using the commands in makefile.ins\n";
print "*/\n";
print "\n";
print "\n";


print "#include \"pdc_commands.h\" \n";
print "\n";
print "void pdc_commands::init_reg_move_codes() {\n";
while ($line = <>) {
   if ($line =~ /mv dbg,(\w+)/) {
       $reg = lc $1;
       if ($line =~ /(0x[0-9a-f]+)/) {
           print "    reg_get_code[\"$reg\"] = $1; \n";
       }
   }

   if ($line =~ /mv (\w+),dbg/) {
       $reg = lc $1;
       if ($line =~ /(0x[0-9a-f]+)/) {
           print "    reg_put_code[\"$reg\"] = $1; \n";
       }
   }
   if ($line =~ /ji r0/) {
       $reg = lc $1;
       if ($line =~ /(0x[0-9a-f]+)/) {
           print "    goto_r0_code = $1; \n";
       }
   }
   if ($line =~ /swbrk/) {
       $reg = lc $1;
       if ($line =~ /(0x[0-9a-f]+)/) {
           print "    core_sw_break_instr = $1; \n";
       }
   }
}
print "}\n";
