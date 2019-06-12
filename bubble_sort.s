.data
A1:  .word -100,0,-4,17,17,324
CR: .word 0x10000
DR: .word 0x10008

.text
main:
ld r1,CR(r0)
ld r2,DR(r0)
daddi r3,r0,-8   ;i
daddi r12,r0,40  ;n=5
dadd r19,r0,r0   ;t

loop1:
daddi r3,r3,8
daddi r5,r3,-40
beq r5,r0,over
daddi r19,r3,8      ;i+1
dsub r13,r12,r19    ;r13=n-t-1
dadd r4,r0,r0   ;j
j loop2


loop2:
daddi r6,r4,8  ;j+1
ld r7,A1(r4)
ld r8,A1(r6)
slt r9,r7,r8        ;if aj+1<aj
beq r4,r13,loop1
daddi r4,r4,8       ;j++
beq r9,r0,swap
j loop2


swap:
daddi r14,r4,-1   ;j+1-1=j
sd r8,A1(r14)
sd r7,A1(r6) 
j loop2

over:
dadd r15,r0,r0
daddi r20,r0,2
j print

print:
ld r16,A1(r15)
sd r16,(r2)
sd r20,(r1)
daddi r15,r15,8
daddi r18,r15,-48
beq r18,r0,final
j print

final:
halt



