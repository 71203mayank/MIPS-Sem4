#this  program is for basic input output in Assembly language

# use 'la' to move variable into registers
# use 'mov' to move registers into another registers  



.text
.globl main
main:

    # printing message 1
    li $v0, 4       # syscall_code print_str 4
    la $a0, msg1    #should load in $a0
    syscall

    #inputing from user
    li $v0, 5
    syscall
    move $t0,$v0

    #printing message 2
    li $v0, 4
    la $a0, msg2
    syscall

    #inputing from user
    li $v0, 5
    syscall
    move $t1, $v0


    #performing mathematical operation 
    add $t0,$t0,$t1     # A=A+B 


    #printing message 3
    li $v0, 4
    la $a0, msg3
    syscall

    #printing solution
    li $v0, 1       #print_int syscall code is 1
    move $a0, $t0
    syscall

    #printing newline character
    li $v0, 4
    la $a0, newline
    syscall


    #exit call
    li $v0, 10
    syscall


    



.data
    msg1: .asciiz "Enter A: "
    msg2: .asciiz "Enter B: "
    msg3: .asciiz "A + B = "
    newline: .asciiz "\n"