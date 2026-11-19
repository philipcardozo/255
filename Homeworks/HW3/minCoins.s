	.text

main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####
	

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
