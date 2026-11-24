	.text

main:

#### Do not remove this separator. Place all of your code below this line and above the next separator. ####
	lw $t0, n
	li $t1, 0                 # x
	li $t2, 1                 # y
	li $t3, 0                 # z
	li $t4, 0                 # i

fib_loop:
	bge $t4, $t0, fib_done
	add $t3, $t1, $t2         # z = x + y
	move $t1, $t2             # x = y
	move $t2, $t3             # y = z
	addi $t4, $t4, 1
	j fib_loop

fib_done:
	sw $t1, fib

#### Do not remove this separator. Place all of your code above this line and below the previous separator. ####

	addi $sp, $sp, -4
	sw $ra, 0($sp)

	la $a0, n_string
	jal print_string
	jal print_colon
	lw $a0, n
	jal print_int
	jal print_newline

	la $a0, fib_string
	jal print_string
	jal print_colon
	lw $a0, fib
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
n:	.word 8
fib:	.word -1

n_string: .asciiz "n"
fib_string: .asciiz "fib"
