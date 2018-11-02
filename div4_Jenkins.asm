.data
array: .word 1, 2, 4, 8, 9, 11, 12, 16, 21, 24

.text
li $s1, 10
la $a0, array
li $s2, 0
move $s0, $zero

loop1: bge $s0, $s1, exit1
sll $t0, $s0, 2
add $t1, $a0, $t1
loop2: sub $t2, $t1, 4
beqz $t2, exit2
bltz $t2, exit3
b loop2


exit1: li $v0, 1
la $a1, ($s2)
syscall

exit2: add $s2, $s2, 1
b loop1

exit3: b loop1



