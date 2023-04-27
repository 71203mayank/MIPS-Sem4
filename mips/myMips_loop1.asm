# program to find sum of 1st N natural no.
# add is b/w registers 
# addi is adding value to the register

.text
.globl main
main:

    li $v0, 4
    la $a0, msg1
    syscall

    # input N
    li $v0, 5
    syscall
    move $t0, $v0    # $t0 contains N 

    li $t1,0    #loop counter i
    li $t2,0    #sum counter

    # myloop
    loop:
        addi $t1,$t1,1   #i=i+1
        add $t2,$t2,$t1 #sum = sum+1
        beq $t0, $t1, exit      #if $t0==$t1, jump exit
        j loop

    exit:
        li $v0, 4
        la $a0, msg2
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
    msg1: .asciiz "Enter N: "
    msg2: .asciiz "Sum of 1st N natural no.: "
    newline: .asciiz "\n"