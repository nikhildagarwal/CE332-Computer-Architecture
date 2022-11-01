#array.s
# The array arr is stored at the address starting from 0x10000018
li x23, 0x10000028 # li: load instant value. x23 stores the address of the array
addi x11, x0, 7
sw x11, 0(x23) # store 7 into memory 0x10000028; arr[0]
addi x11, x0, 5
sw x11, 4(x23) # store 5 into memory 0x10000028+4; arr[1]
addi x11, x0, 3
sw x11, 8(x23) # store 3 into memory 0x10000028+8; arr[2]
addi x11, x0, 1
sw x11, 12(x23) # store 1 into memory 0x10000028+(decimal)12; arr[3]
# YOUR SOLUTION HERE…
lw x5,0(x23)
lw x6,4(x23)
xor x7,x5,x6
add x8,x7,x6
sw x7,8(x23)
sw x8,12(x23)
