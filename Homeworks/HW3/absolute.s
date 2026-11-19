	.text
main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####
	

	
#### Do not remove this separator. Place all of your code above this line and below the previous separator. ####

	addi $sp, $sp, -4
	sw $ra, 0($sp)

	la $a0, n_string
	jal print_string
	jal print_colon
	lw $a0, n
	jal print_int
	jal print_newline

	la $a0, abs_val_string
	jal print_string
	jal print_colon
	lw $a0, abs_val
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

n:	 .word 0
abs_val:	.word -1

n_string:	.asciiz "n"
abs_val_string:	.asciiz "abs_val"
