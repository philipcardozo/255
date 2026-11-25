	.text
main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####

	lw $t0, sideA
	lw $t1, sideB
	lw $t2, sideC

	bne $t0, $t1, check_isosceles
	bne $t1, $t2, check_isosceles
	li $t3, 0                 # Equilateral
	j triangle_done

check_isosceles:
	beq $t0, $t1, isosceles
	beq $t1, $t2, isosceles
	beq $t0, $t2, isosceles
	li $t3, 2                 # Scalene
	j triangle_done

isosceles:
	li $t3, 1

triangle_done:
	sw $t3, type

#### Do not remove this separator. Place all of your code above this line and below the previous separator. ####

	addi $sp, $sp, -4
	sw $ra, 0($sp)

	la $a0, sideA_string
	jal print_string
	jal print_colon
	lw $a0, sideA
	jal print_int
	jal print_newline

	la $a0, sideB_string
	jal print_string
	jal print_colon
	lw $a0, sideB
	jal print_int
	jal print_newline

	la $a0, sideC_string
	jal print_string
	jal print_colon
	lw $a0, sideC
	jal print_int
	jal print_newline

	la $a0, type_string
	jal print_string
	jal print_colon
	lw $a0, type
	jal print_int
	jal print_newline

	lw $ra, 0($sp)
	addi $sp, $sp, 4

	jr $ra

	
print_int:
	li $v0, 1
	syscall
	jr $ra
	
print_string:
	li $v0, 4
	syscall
	jr $ra
	
print_newline:
 	li $v0, 11
 	li $a0, 10
 	syscall
	jr $ra

print_colon:
	li $v0, 11
	li $a0, 58
	syscall
	jr $ra

	
	.data
sideA:	.word 4
sideB:	.word 4
sideC:	.word 4
type:	.word 10

sideA_string:	.asciiz "sideA"
sideB_string:	.asciiz "sideB"
sideC_string:	.asciiz "sideC"
type_string:	.asciiz "type"

