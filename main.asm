;These directives include the specified library files during the linking process. 
includelib ucrt.lib ;the Universal C Runtime library.
includelib legacy_stdio_definitions.lib ;provides compatibility with older versions of the C Standard Library.


EXTERN printf: PROC ;Declares the printf function as an external procedure.



.DATA ;Declares a null-terminated string fmtStr containing the format for the printf function.
fmtStr byte 'The sum is %d', 10, 0


.CODE ;The code section.
main PROC
    mov rcx, 10 ;Moves the values 10 into the registers rcx.
    mov rdx, 20 ;Moves the values 20 into the registers rdx.

    call Sum ;Calls the Sum procedure 
    call Print ;Calls the Print procedure 

    xor rax, rax
    ret
main ENDP


Sum Proc ;adds the values in rcx and rdx and returns the result in rax.
    mov rax, rcx
    add rax, rdx
    ret
Sum ENDP


Print PROC
    sub rsp, 20h ;Allocates space on the stack (subtracts 20h from rsp).
    lea rcx, fmtStr ;Loads the address of the format string (fmtStr) into rcx.
    mov rdx, rax ;Moves the value in rax (result of the addition) into rdx.
    call printf ;Calls the printf function.
    add rsp, 20h ;Adjusts the stack pointer to restore the stack space.
    ret ;Returns from the procedure.
Print ENDP


END ;Marks the end of the assembly code.