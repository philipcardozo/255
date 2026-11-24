	.text

main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####
	lw $t0, n
	li $t1, 1                 # Count the starting number
	li $t2, 2
	li $t3, 3

collatz_loop:
	ble $t0, 1, collatz_done
	div $t0, $t2
	mfhi $t4                  # Remainder of n / 2
	beq $t4, $zero, even

	mul $t0, $t0, $t3         # n = 3*n + 1
	addi $t0, $t0, 1
	j next_step

even:
	mflo $t0                  # n = n / 2

next_step:
	addi $t1, $t1, 1
	j collatz_loop

collatz_done:
	sw $t0, n
	sw $t1, steps

#### Do not remove this separator. Place all of your code above this line and below the previous separator. ####

	addi $sp, $sp, -4
	sw $ra, 0($sp)

	la $a0, n_string
	jal print_string
	jal print_colon
	lw $a0, n
	jal print_int
	jal print_newline

	la $a0, steps_string
	jal print_string
	jal print_colon
	lw $a0, steps
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

n:	.word 10
steps:	.word -1

n_string:	.asciiz "n"
steps_string:	.asciiz "steps"
