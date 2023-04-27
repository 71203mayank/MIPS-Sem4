# this is a basic program to initilize array

.text
.globl main
main:
    addi $s0, $zero, 10
    addi $s1, $zero, 6
    addi $s2, $zero, 12

    # index: $t0
    li $t0, 0

    # sw: store word in RAM
    sw $s0,myArray($t0)
    addi $t0, $t0, 4

    sw $s1, myArray($t0)
    addi $t0, $t0, 4

    sw $s2, myArray($t0)
    

    # Accessing data to reg from RAM using lw (load word)
    lw $t6, myArray($zero)

    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 10
    syscall


.data
    myArray: .space 12 #    size(3)*int(4)=12bytes
