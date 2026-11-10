	.text
main:
	############################
	# setup code: do not alter #
	############################
	
	addi $sp, $sp, -8          # allocate 8 bytes on the stack
	move $s0, $sp              # save $s0 as the base pointer to our data

	addi $t0, $zero, 10        # a = 10
	sw $t0, 0($s0)
	addi $t0, $zero, 20        # b = 20
	sw $t0, 4($s0)

	# 0x00400008 [0x2008000a] 0x00400010 [0x20080014]

	############################################################
	# TODO: 1. load value a from memory (stored at 0($s0))     #
	#       2. load value b from memory (stored at 4($s0))     #
	#       3. compute a = a - b                               #
	#       4. compute b = a + 6 + b                           #
	#       5. store updated value a to memory (same location) #
	#       6. store updated value b to memory (same location) #
	############################################################

	# put your code here

	li $t0, 0($s0) # 0x2008000a
	li $t1, 4($s0) # 0x2008000a

	addi $t1, $t1, 6 	
	addi $t1, $t0, $t1 # error 

	sw $t0, imm(0$s0)
	sw $t1, imm(4$s0)

	
	###########################
	# exit code: do not alter #
	###########################
	
	lw   $a0, 0($s0)          # print updated value
	li   $v0, 1

	syscall	
	li   $a0, 10              # print newline '\n'
	li   $v0, 11
	syscall

	lw   $a0, 4($s0)          # print updated next
	li   $v0, 1

	syscall
	li   $a0, 10              #  print newline
	li   $v0, 11
	syscall

	addi $sp, $sp, 8          # restore stack and return
	jr $ra
