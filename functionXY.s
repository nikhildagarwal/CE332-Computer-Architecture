.data
source:
    	x: .word 0		
	y: .word 2
.text
    main:
    	#x8 = x
    	#x9 = y
    	#x27 = f(x,y)
    	addi x7, x0,1
    	addi x27, x10,0
	lw x8,x
    	lw x9,y
    	beq x0,x8,power0		#if x = 0, go to power0
    	addi x18,x0,4			#x18 = 4
    	blt x18,x8,case1		#if x>4 go to case1
    	jal x1, comp_2			#go to comp2
    	add x27,x14,x0		#take in comp2 output
    	addi x10,x10,1				
    	add x11,x27,x0
    	ecall
   	j exit
    	bge x0,x0,end1		
    case1:
    	jal x1, comp_1			#go to comp1
    	add x27,x14,x0		#take in comp1 output
    	addi x10,x10,1
    	add x11,x27,x0
    	ecall
    	j exit
    end1:
    comp_1:
    	addi x5, x0,5			#multiplier = 5
    	mul x6, x5,x8			# x6 = 5*x
    	add x6,x6,x9			# x6 = 5*x+y
    	add x14,x6,x0			#store x6 in function output
    	jalr x0, 0(x1)			#output x14 
    comp_2:
    	addi x5,x8,0			#i = x
    while:				
    	mul x7,x7,x9			#base equals y
    	addi x5, x5,-1			#i = i-1
    	blt x0,x5,while			#if i>0 then go back to while
    	add x14,x7,x0			#store x7 into x14
    	jalr x0,0(x1)			#output x14
    power0:
    	addi x10,x0,1			
    	addi x11, x0,1
    	ecall
    exit:
