.data
source:
    x: .word -100		

.text
	main:
	#x15 = x
    #x16 = y
	lw x15,x
	lw x16,x    			#load int x=100 into x16, x16 will hold y
    addi x10,x0,1			#ecall signal to print integer
    blt x16,x0,negative		#if x<0 got to negative		
    bge x0,x0,end			#will go to end if x is already positive
    negative:
    addi x8,x0,-1			#x8 = -1
    mul x16,x16,x8			#x16 = x16 * -1 (-x*-1 = x)	
    end:
    blt x15, x16, path1		#if x<y go to path1
    slli x11,x16,2			#ecall output is 4*y
    ecall
    bge x0,x0,end2			#go to end2 so that we dont go to path1
    path1:
    addi x9,x0,6			#multiplier is 6
    mul x11,x15,x9			#ecall output is x*6
    ecall
    end2:
