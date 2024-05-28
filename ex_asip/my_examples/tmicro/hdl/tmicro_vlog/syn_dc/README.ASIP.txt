1. General
  This synthesis environment is based on the Reference Methodology, which
  can be downloaded from Synopsys SolvNet at:
  https://solvnet.synopsys.com/rmgen
  The settings for download of the Reference Methodology from SolvNet
  used here were:

    Design Compiler version: M-2016.12-SP4

  Option Name:              Setting
  ================================
  Setup
  RTL Source Format:        AUTOREAD

  Flow Configuration
  Physical Guidance:        TRUE
  Hierarchical Flow:        FALSE
  MCMM Flow:                FALSE
  Synopsys Logic Libraries  FALSE

  Low Power Configuration
  Multi-Voltage UPF:        FALSE
  Clock Gating:             TRUE
  XOR Self-Gating:          FALSE
  Clock-Gating Interaction: INSERT
  Low-Power Placement:      TRUE

  Design for Test Configuration
  DFT Synthesis:            FALSE

  Design Environment
  DC Explorer Compatible:   TRUE
  Lynx Compatible:          TRUE

2. Usage and ASIP specific changes/modifications
  The environment has been modified such that different setups in rm_setup
  can be selected by environment variables.
  In order to add this flexibility, two scripts in the original reference
  methodology script set had to be modified:
    scripts_block/rm_dc_scripts/dc.tcl
    scripts_block/rm_dc_scripts/fm.tcl
  All changes are marked with
    '######### BEGIN CHANGED FOR ASIP SCRIPTS ############'
    '######### END CHANGED FOR ASIP SCRIPTS ############'

  For ease of use a Makefile is generated that allows to run a complete
  synthesis either with the original scripts or with the ASIP specific scripts,
  and there with different library setups (see explanation of the Makefile
  targets below).

  The default 'make' or 'make asip' command expects the (environment) variable
  ASIP_SETUP to point to a directory (it is set by default in the Makefile to
  the generated directory 'asip_setup') that contains an ASIP specific
  asip_dc_setup.tcl script to be executed instead of the original dc_setup.tcl
  script. This asip_dc_setup.tcl script then also uses a custom
  asip_common_setup.tcl script with library specific setups. Also an ASIP
  specific asip_constraints.tcl script is used to constrain the design. All ASIP
  specific files are generated in the directory 'asip_setup' with the necessary
  processor specific settings.

  Both the asip_common_setup.tcl and asip_constraints.tcl scripts are prepared
  to deal with different library setups; the setup to be used is specified by an
  additional variable ASIP_LIB_SETUP, to be set by the user as either a Makefile
  variable or environment variable. For the 'saed32' target in the Makefile (see
  below), the ASIP_SETUP variable points to the 'asip_setup' directory, and the
  ASIP_LIB_SETUP variable to the SAED32 library specific 'asip_setup/saed32'
  directory.

    File                                        Description:
    --------------------------------------------------------------------------
    asip_setup/asip_dc_setup.tcl                ASIP specific setup script,
                                                used instead of the original
                                                dc_setup.tcl script
    asip_setup/asip_common_setup.tcl            ASIP specific setup script,
                                                used instead of the original
                                                common_setup.tcl script
    asip_setup/asip_constraints.tcl             ASIP specific constraints script
    asip_setup/saed32/asip_lib_setup.tcl        SAED32 library setup
    asip_setup/saed32/asip_lib_constraints.tcl  SAED32 library specific
                                                constraints

  For better power optimization, you can specify an ASIP_SAIF_FILE as
  environment variable. Please note that then also the instance on which this
  will be applied must be specified as ASIP_SAIF_INSTANCE environment variable
  (see rm_dc_scripts/dc.tcl):
    Variable                      Description:
    --------------------------------------------------------------------------
    ASIP_SAIF_FILE                User specific saif file
    ASIP_SAIF_INSTANCE            User specific saif instance

  Note: Clock gating is disabled (option to compile_ultra in dc.tcl), if
        clock_gating is already done in GO, or if it has been explicitely
        disabled during the generation of these scripts.

  If required, the original scripts from the downloaded reference methodology
  (common_setup.tcl, dc_setup.tcl) can be used with 'make orig'. These have to
  be customized to the needs then.

  In order to allow further user modifications, the compile step can be replaced
  by a user specific script. For that, the dc.tcl script checks for a
  'custom_compile.tcl' script in the directory pointed to by the ASIP_SETUP variable.
  If it exists, the script is executed instead of the compile.

  To cleanup the directories 'make clean' can be used.


3. The Makefile targets.
  'make' or
  'make asip will run a default synthesis, with a custom technology library.

                The environment variable ASIP_LIB_SETUP must be set for
                this and point to a directory with the library specific setup
                and constraint files 'asip_lib_setup.tcl' and
                'asip_lib_constraints.tcl'. A sample setup can be found in the
                asip_setup/saed32 directory (see 'make saed32') and used as a
                template for the custom library.

                Alternatively to setting an environment variable, the directory
                can be specified on the commandline by 'make asip
                ASIP_LIB_SETUP=<path_to_custom_setup>' This enables a quick
                switch between different synthesis libraries and constraints,
                while maintaining the design specific settings.

                If a different setup directory other than the default
                'asip_setup' is required, it can be specified on the commandline
                by 'make asip ASIP_SETUP=<path_to_my_setup>'. This
                enables a quick switch between different setups (for example
                with different timing constraints).

  'make saed32' will run a default synthesis using the 'SAED32' library set.

                This is a set of 32/28nm and 90nm generic libraries and
                technological components, which originally is targeted for
                teaching and studying microelectronic design. They can be used
                to study advanced design methods as low power, and allow the
                implementation of various IP and IC designs.
                In this context, it is used to show a sample flow in the
                reference methodology environment. It is targeted to run out of
                the box, without further modifications.

                This library set can be downloaded by ASIP tool customers
                from SolvNet at:
                 https://www.synopsys.com/apps/protected/university/members.html
                For this setup here you will need the CORE_RVT, IO, SRAM and
                TECH files; the others are not used, but can also be downloaded
                for further experiments.
                Download and install the libraries at some place, and then
                define an environment variable to point to that location:
                  setenv SAED32_HOME <path_to_SAED32_library_installation>

                The target uses the modified scripts in the asip_setup
                directory; the SAED32 library specific settings and constraints
                can be found in the asip_setup/saed32 directory.


  'make orig'   will run a synthesis as specified in the reference methodology.

                For setup please refer to the README, RELEASE and settings files
                (README.DC-RM.txt, DC-RMsettings.txt, etc) in the scripts_block
                directory.
                Only the ASIP_SAIF_FILE and ASIP_SAIF_INSTANCE environment
                variables mentioned above will have an effect in this setup.

  'make clean'  will delete all generated files and directories





