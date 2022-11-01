	addi x5, x0, 13 	#x5 = 13
	addi x6, x0, 14		#x6 = 14
	addi x7, x0, 27		#x7 = 27
	bne x5, x6, ifStatement		#checks to see if x5!=x6. routes to IfStatement if true
	xor x6, x5, x7		#This is else part (x6 = x5 xor x7)
    addi x10, x0,1 		#function code (x10) for ecall is 1
    add x11, x0, x6		#functin output (x11) for ecall is x6
    ecall
    beq x11, x11, ExitIfElse 	#will exit conditional intead of continuing to if portion
ifStatement:
	or x7, x7, x5		#This is if part (x7 = x7 | x5)
    addi x10, x0, 1		#function code (x10) for ecall is 1
    add x11, x0, x7		#functin output (x11) for ecall is x7
    ecall
ExitIfElse:
	#will route here if we DONT jump to ifStatement
