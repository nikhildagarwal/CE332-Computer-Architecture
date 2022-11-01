# directives.s
.data
	E: .asciiz "E"
    .: .asciiz "."
.text
main:
addi x10,x0,4		#function code 4 for ecall (print String)
la x11,E			#ecall output in x11
ecall

addi x3, x0,2		#x3 = 2
addi x4, x0,1		#x4 = 1
or x5, x3, x4		#x5 = x3 OR x4
addi x10,x0,1		#function code 1 for ecall (print int)
add x11, x0, x5		#ecall output in x11
ecall				

addi x10,x0,4		#function code 4 for ecall (print String)
la x11, .			#ecall output in x11
ecall				

addi x10,x0,1		#function code 1 for ecall (print int)
add x11, x0, x3		#ecall output in x11
ecall				
