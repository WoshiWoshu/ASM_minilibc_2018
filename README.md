# ASM_minilibc_2018
Second year mini project in Assembly in which the goal is to re-write several basic C Unix library functions in assembly.
The program then generate a shared dynamic library to overwrite the C system functions (weak binding).

USAGE :
        
        Make
        gcc -L./ main.c -lasm.
