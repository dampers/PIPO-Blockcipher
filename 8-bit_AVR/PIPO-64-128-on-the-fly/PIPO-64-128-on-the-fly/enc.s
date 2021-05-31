﻿.global PIPO_ENC
.type PIPO_ENC, @function

#define PT0 R18
#define PT1 R19
#define PT2 R20
#define PT3 R21
#define PT4 R22
#define PT5 R23
#define PT6 R24
#define PT7 R25

#define RC R28
#define CNT R29

#define RK R13
#define T0 R14
#define T1 R15
#define T2 R16
#define TMP R17


.macro MAKE_RK_AND_ADD
SBRS RC, 0
MOVW R30, R10

LD RK, Z+
EOR RK, RC
EOR PT0, RK

LD RK, Z+
EOR PT1, RK
LD RK, Z+
EOR PT2, RK
LD RK, Z+
EOR PT3, RK
LD RK, Z+
EOR PT4, RK
LD RK, Z+
EOR PT5, RK
LD RK, Z+
EOR PT6, RK
LD RK, Z+
EOR PT7, RK

.endm


PIPO_ENC:

PUSH R10
PUSH R11
PUSH TMP
PUSH RK
PUSH T0
PUSH T1
PUSH T2
PUSH RC
PUSH CNT

MOVW R26, R24
MOVW R10, R22

LD PT0, X+
LD PT1, X+
LD PT2, X+
LD PT3, X+
LD PT4, X+
LD PT5, X+
LD PT6, X+
LD PT7, X+


CLR RC
LDI CNT, 13

// KEY ADD
MAKE_RK_AND_ADD

LOOP:
INC RC

// S-Layer

//S5_1
MOV TMP, PT7
AND TMP, PT6
EOR PT5, TMP

MOV TMP, PT3
AND TMP, PT5
EOR PT4, TMP

EOR PT7, PT4
EOR PT6, PT3

MOV TMP, PT4
OR TMP, PT5
EOR PT3, TMP

EOR PT5, PT7

MOV TMP, PT5
AND TMP, PT6
EOR PT4, TMP



//S3
MOV TMP, PT1
AND TMP, PT0
EOR PT2, TMP

MOV TMP, PT2
OR TMP, PT1
EOR PT0, TMP

MOV TMP, PT2
OR TMP, PT0
EOR PT1, TMP

//
COM PT2
//


// extend XOR
EOR PT7, PT1
EOR PT3, PT2
EOR PT4, PT0

// S52
MOV T0, PT7
MOV T1, PT3
MOV T2, PT4

MOV TMP, T0
AND TMP, PT5
EOR PT6, TMP

EOR T0, PT6

MOV TMP, T2
OR TMP, T1
EOR PT6, TMP

EOR T1, PT5

MOV TMP, PT6
OR TMP, T2
EOR PT5, TMP

MOV TMP, T1
AND TMP, T0
EOR T2, TMP

// Truncate XOR and bit change
EOR PT2, T0

MOV T0, PT1
EOR T0, T2

MOV PT1, PT0
EOR PT1, T1

MOV PT0, PT7
MOV PT7, T0
MOV T1, PT3
MOV PT3, PT6
MOV PT6, T1
MOV T2, PT4
MOV PT4, PT5
MOV PT5, T2


// R-Layer

// left rotation 7
BST PT1, 0
LSR PT1
BLD PT1, 7

// left rotation 4
SWAP PT2

// left rotation 3
SWAP PT3
BST PT3, 0
LSR PT3
BLD PT3, 7

// left rotation 6
SWAP PT4
LSL PT4
ADC PT4, R1
LSL PT4
ADC PT4, R1

// left rotation 5
SWAP PT5
LSL PT5
ADC PT5, R1

// left rotation 1
LSL PT6
ADC PT6, R1

// left rotation 2
LSL PT7
ADC PT7, R1
LSL PT7
ADC PT7, R1

// key add
MAKE_RK_AND_ADD


CPSE RC, CNT
RJMP LOOP


ST -X, PT7
ST -X, PT6
ST -X, PT5
ST -X, PT4
ST -X, PT3
ST -X, PT2
ST -X, PT1
ST -X, PT0

POP CNT
POP RC
POP T2
POP T1
POP T0
POP RK
POP TMP
POP R11
POP R10

RET