# program to find the largest among the N inputed numbers.

.text
.globl main
main:

    # input N 
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    #inputing N elements

    li $v0, 4
    la $a0, msg2
    syscall

    li $t1,0    # loop counter
    li $t2,0    # max counter 

    loop:
        addi $t1,$t1,1

        # input ith element
        li $v0, 5
        syscall
        move $t3, $v0

        bgt $t3,$t2,great

        backto:

        beq $t0,$t1,exit
        j loop

    great:
        move $t2, $t3
        j backto

    exit:

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 1
        move $a0, $t2
        syscall

        li $v0, 4
        la $a0, newline
        syscall

        li $v0, 10
        syscall
        




.data
    msg1:   .asciiz "Enter N: "
    msg2:   .asciiz "Start entering ur no.\n"
    msg3:   .asciiz "max element: "
    newline:    .asciiz "\n"