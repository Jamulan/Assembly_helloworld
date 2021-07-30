.data:
    msg:
        .ascii "hello world\n"

.text
    .globl _main
    _main:
        pushq %rbp
        movq %rsp, %rbp
        subq $32, %rsp
        leaq msg(%rip), %rdi
        movq $0, %rsi
        callq _printf
        addq $32, %rsp
        popq %rbp

        movq $60, %rax
        movq $0, %rdi
        syscall