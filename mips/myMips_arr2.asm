# this program aims to input/output array using loops

.text
.globl main
main:

    # message 1
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0   # $s0 stores N 

    # message 2
    li $v0, 4
    la $a0, msg2
    syscall

    li $t0, 0   # loop counter
    li $t1, 0   # array counter
    li $t3, 0   # temp value

    read_loop:
        addi $t0, $t0, 1
        
        li $v0, 5
        syscall
        move $t3, $v0

        sw $t3, myArray($t1);
        addi $t1, $t1, 4

        beq $t0, $s0, exit_read
        j read_loop

    exit_read:
    li $t0, 0
    li $t1, 0

    # message 3
    li $v0, 4
    la $a0, msg3
    syscall

    print_loop:
        addi $t0, $t0, 1

        lw $t3, myArray($t1)
        addi $t1, $t1, 4

        li $v0, 1
        move $a0, $t3
        syscall

        li $v0, 4
        la $a0, space
        syscall

        beq $t0, $s0, exit
        j print_loop

    exit:
        li $v0, 10
        syscall






.data
    myArray: .space 40
    msg1: .asciiz "Enter N: "
    msg2: .asciiz "Enter array:\n"
    msg3: .asciiz "your array is: "
    space: .asciiz " "