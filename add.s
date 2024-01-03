.global _start


_start://_main
    // ARM64 assembly code for adding 1 + 10
    mov x0, #10    // Load 1 into register x0
    mov x1, #11   // Load 10 into register x1
    add x2, x0, x1  // Add x1 to x0 (result in x0)
    mul x3,x0,x1
    add x4,x0,#1
    mul x5,x4,x1
    sub x6,x1,x0
    

    // Exit the program
    //mov x8, #93   // syscall number for exit
    //mov x0, #0    // exit code 0
    svc #0        // make syscall

/*
as -g -o add.o add.s
ld -o add add.o
gdb ./add
break _start //break add.s:11
run
//stepi
info registers
*/
