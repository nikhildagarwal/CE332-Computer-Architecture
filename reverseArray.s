.data
	array:
		.word 2
    	.word 6
    	.word 5	
    	.word 12
    	.word 9
    	.word 8
	length: .word 6						#Modify (lenth of array)
	address: .word 0x100000bc			#specific address we want to input too
    description: .asciiz "Reversed Array:  "
    space: .asciiz "  "
.text
	main:					
        addi x3,x0,2					#divsor to go through half the array
        addi x10,x0,1					
        la x23,array					#x23 holds array
        lw x7, length					#x7 holds length of array
        lw x8, address					#x8 holds address that we input too
        jal x1, input					#calls input
        jal x1, reorder					#calls reorder
        jal x1, output					#calls output
        bge x0,x0,exitFinal				#always goes to the end
   	input:
    	addi sp,sp,-4					#make room in stack (1)
        sw x9,0(sp)					
        addi x15,x0,0					#i=0
        loop1:	
        	bge x15,x7,exit1			#when index is OutOfBounds go to exit1
            addi x12,x15,0				#immediate
        	slli x12,x12,2				#shift immediate
        	add x13,x12,x8				#stores address of targeted address
        	add x12,x12,x23				#stores original address
        	lw x9,0(x12)				#load stack (x9) with orignal address value
        	sw x9,0(x13)				#store stack value (x9) into target address
            addi x15,x15,1				#i = i+1 (iterate through each element)
            beq x0,x0,loop1				#will always go back to loop1
   	reorder:
    	addi sp,sp,-8					#make room for stack elements (2)
        sw x14,0(sp)
        sw x15,4(sp)
    	addi x21,x0,0					#i=0
        addi x22,x7,-1					#j = length-1
        div x7,x7,x3					#bound = length / 2
        loop2:
        bge x21,x7,exit2				#when index is OutOfBounds go to exit2
        addi x12,x21,0					#imm of first int
        addi x13,x22,0					#imm of second int
        slli x12,x12,2					#shift
        slli x13,x13,2					#shift
        add x12,x12,x8
        add x13,x13,x8
        jal x2,swap						#call to swap
       	addi x21,x21,1					#i = i+1
        addi x22,x22,-1					#j = j-1
        beq x0,x0,loop2					#will always go back to loop2
    output:
    	lw x7,length					#restores loop bound to length
    	addi sp,sp,-4					#room in stack (1)
        sw x9,0(sp)						
        addi x15,x0,0
        addi x10,x0,4
        la x11,description				#printf "Reverse Array:  "
        ecall
        loop3:
        	bge x15,x7,exit1			#when index is OutOfBounds go to exit1
            addi x12,x15,0				#imm of first int in reverse array
            slli x12,x12,2				#shift imm
            add x13,x12,x8				
            lw x9,0(x13)				#load x9 (stack) with value
           	addi x10,x0,1				#printf
            addi x11,x9,0
            ecall
            addi x10,x0,4				#printf "  " for legibility
        	la x11,space
        	ecall
            addi x15,x15,1				#i = i+1
            beq x0,x0,loop3				#will always go to loop3
	exit1:
        lw x9,0(sp)						#restore stack
        addi sp,sp,4
        jalr x0,0(x1)					#return call to function
    exit2:
    	lw x14,0(sp)					#restore stack
        lw x15,4(sp)
        addi sp,sp,8
        jalr x0,0(x1)					#return call to function
    swap:
    	lw x14,0(x12)					
        lw x15,0(x13)
        sw x15,0(x12)
        sw x14,0(x13)
        jalr x0,0(x2)
    exitFinal:
