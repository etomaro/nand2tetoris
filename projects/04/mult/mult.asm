// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.b 

// ルールとしてR0とR1に保存される値を乗算する
// R2に答えを保存する。
    
// M[2]:答え, M[3]:ループ回数


    @3
    M=1
    @2
    M=0
(LOOP)
    // ループ回数-R1>0の時ENDへ
    @3
    D=M
    @1
    D=D-M 
    @END
    D;JGT  // D>0の時ENDへ

    // 乗算
    @0
    D=M 
    @2
    M=M+D

    // インクリメント
    @3
    M=M+1

    // JMPへ
    @LOOP 
    0;JMP

(END)
    // 無限ループ(終了)
    @END
    0;JMP
