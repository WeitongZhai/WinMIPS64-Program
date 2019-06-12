.data
A1:   .word 2,1,4
A2:   .word 0,1,1
B1:   .word 6,1,-2
B2:   .word 3,1,5
B3:   .word -1,0,0
B4:   .word 0,4,2
CR: .word 0x10000
DR: .word 0x10008

.text
main:
ld r1,CR(r0)
ld r2,DR(r0) 
daddi r3,r0,-8   ;i



loop1:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A1(r3)
ld r5,B1(r3)
dmul r6,r4,r5
daddi r7,r7,0
dadd r7,r7,r6
beq r8,r0,print1
j loop1

print1:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop2

loop2:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A1(r3)
ld r5,B2(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print2
j loop2

print2:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop3

loop3:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A1(r3)
ld r5,B3(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print3
j loop3

print3:
daddi r3,r0,-8
daddi r20,r0,2
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop4

loop4:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A1(r3)
ld r5,B4(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print4
j loop4

print4:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop5

loop5:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A2(r3)
ld r5,B1(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print5
j loop5

print5:
daddi r3,r0,-8
daddi r20,r0,2
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop6

loop6:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A2(r3)
ld r5,B2(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print6
j loop6

print6:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop7

loop7:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A2(r3)
ld r5,B3(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print7
j loop7

print7:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
j loop8

loop8:
daddi r3,r3,8
daddi r8,r3,-16
ld r4,A2(r3)
ld r5,B4(r3)
dmul r6,r4,r5
dadd r7,r7,r6
beq r8,r0,print8
j loop8

print8:
daddi r3,r0,-8
daddi r20,r0,1
sd r7,(r2)
sd r20,(r1)
dadd r7,r0,r0
halt
