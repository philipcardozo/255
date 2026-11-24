	.text

main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####
	lw $t0, cents
	li $t1, 0                 # count

quarters:
	blt $t0, 25, dimes
	addi $t1, $t1, 1
	addi $t0, $t0, -25
	j quarters

dimes:
	blt $t0, 10, nickels
	addi $t1, $t1, 1
	addi $t0, $t0, -10
	j dimes

nickels:
	blt $t0, 5, pennies
	addi $t1, $t1, 1
	addi $t0, $t0, -5
	j nickels

pennies:
	add $t1, $t1, $t0         # Add the remaining pennies
	sw $t0, cents
	sw $t1, count

#### Do not remove this separator. Place all of your code above this line and below the previous separator. ####

	addi $sp, $sp -4
	sw $ra, 0($sp)
	
	la $a0, cents_string
	jal print_string
	jal print_colon
	lw $a0, cents
	jal print_int
	jal print_newline
	
	la $a0, count_string
	jal print_string
	jal print_colon
	lw $a0, count
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
cents:	.word 37
count:	.word -1

cents_string: .asciiz "cents"
count_string: .asciiz "count"	
