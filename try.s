.global _start


_start://_main
    
    mov w0, 10    
    mov w1, 11   
    add w2, w0, w1  
    //some of the system may require #
    //w is 32bits

    
    svc 0        // make syscall end //arm64

/*
as -g -o try.o try.s
ld -o try try.o
gdb ./try
break _start //break add.s:11
run
//stepi
info registers
*/
