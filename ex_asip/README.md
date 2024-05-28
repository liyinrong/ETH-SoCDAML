# Log-in into the account

Log-in into your account:

```
ssh soc_fs23_YY@pisocX.ee.ethz.ch
```

Where

- `YY` is a number in the range 01-20
- `X` is a number in the range 1-8

# Getting the files

Copy in your home folder containing the exercise:

```
cd
cp -r /home/soc_fs23_00/ex_asip your_home
cd ex_asip
```

# Getting Started and warming up

Start the tool with

```
./start_asiptool
```

This exercise is meant for starting having confidence with the tool,
understand where things are and correlate what you see here with the lecture.

## Documentation

Under `doc/` you find a lot symbolic links for documentation. The document
`./doc/user_manual.pdf` gives you an overview of the various available manuals.
If you wish to have a look a at specific manual, look for them in the directory
`./doc/manuals/` (The direct links inside the `./user_manual.pdf` do currenlty
not work).

## Examples

In the `official_examples` folder you find all the examples provided from
Synopsys, however, you cannot directly open those projects if you want to modify them.
You have to copy one of those examples under the `my_examples` folder so that you
have the rights to write, this allows you to modify and compile your example.

## Compile your first project

First, copy the `tmicro` project that contains the processor model and some examples.

```
mkdir -p my_examples
cp -r official_examples/tmicro my_examples/
```

Before proceeding, please read the `README` file under
`my_examples/tmicro/lib/runtime`.
Additionally, read the `./user_manual.pdf` and have a look at the documentation under `doc/`.


### Compile the Core model and its C library

The `C` runtime library is located in `my_examples/tmicro/lib/runtime`.

```
File -> Open -> Project
```

Here you will find the project `libc.prx`, open it. You will find that the library
project depends on the `tmicro` project which contains the processor HDL
project.

The `libc` is the C standard library that contains functions like `malloc`, `printf`
etc.

Compile the library (which will first also compile the processor model) with
```
Compile -> Make
```
If you need to quickly access the processor model when you have another project open,
right-click the processor model in the top-left `Target` list and select
`Open processor model`.

Furthermore, you will also need the primitive SW functions needed to run and
compile applications on the processor. This library, `libtmicro`, is located in
`my_examples/tmicro/lib`.

Open and compile the `libtmicro.prx` project.


### Compile the core Instruction Set Simulator (ISS)

The ISS is located in `my_examples/tmicro/iss`.

```
File -> Open -> Project
```

You will find 2 projects, `tmicro_ca.prx` and `tmicro_ia.prx`.
Compile both the cycle-accurate (ca) and instruction-accurate (ia) ISS to proceed.

### Compile an application

For now, we will compile the sort application from `my_examples/tmicro/sort`.
```
File -> Open -> Project
```

You will find 2 projects in the `sort` directory, use `sort.prx`.

To use the `C` library in your application, make sure it is visible in your
project settings. The settings should already be correct. If linking fails,
however, make sure to add `runtime/lib/<CONFIG>` to the `Library path [-L]`
option in the `Linking` sheet and the add `c` to the `Libraries using the library path
[-l]` option. Furthermore, make sure that the `CPP preprocessors` `Include path
[-I]` option contains the `runtime/include` path. These options are usually
inherited from the processor models, thus the default option should be fine.

For more information, see section 4 of the
`my_examples/tmicro/lib/runtime/README` file.

Compile the application with
```
Compile -> Make
```

### Run the application

```
Debug -> Run in Console
```

### Continue with the README in ./ex1 and ./ex2

### ** Important** : If you modify the core or runtime functions, make sure to recompile everything ;)
