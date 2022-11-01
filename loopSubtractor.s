.data
	phrase: .asciiz "b is equal to " #Initialize variable output_string: "b is equal to "
.text
main:
	addi x13, x0, 10 #Initialize variable a
	addi x15, x0, 0 #Initialize variable b
	jal x1, ex_4 #Jump to ex_4, and return back to this position after ex_4()is finished
	add x15, x14, x0 #Load the returned value from Ex_4 in x15; b = ex_4(a)
	
  	  #Print output_string
   	addi x10, x0, 4 #function code for string printing is 4
    	la x11, phrase	#output for ecall (x11) is phrase
    	ecall
    
	addi x11, x15, 0 #Store value of x15 in x11 for print in ecall
	addi x10, x0, 1 #Store 1 in x10 for printing integers using ecall
	ecall
	j exit
ex_4:
	#Initialize res and i
    	addi x5, x0, 200	#res = 200
    	addi x6, x0, 20		#i = 20
while:
	#Calculate res -= a and i = i - 1
    	sub x5, x5,x13		#res = res - a
    	addi x6, x6, -1		#i = i+(-1) --> i = i - 1
	#If i > a, jump to...
   	blt x13, x6, while	#jump to while if a<i --> i>a
	#Place value of res in x14 for return
    	add x14, x0, x5
	jalr x0, 0(x1) #Return back to caller
exit:
