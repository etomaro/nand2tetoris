// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.b 

// ルールとしてR0とR1に保存される値を乗算する
// R2に答えを保存する。R0の値をR1回たす。
    
    // M[2]:答え, M[3]:ループ回数, M[4]:合計値
    @3
    M=1
    @4
    M=0
(LOOP)
    @3
    D=M
    @1
    D=D-M
    @END
    D;JGT  // M[3] - R1 > 0
    @0
    D=M 
    @2
    M=M+D  // 合計値を計算
    @3
    M=M+1  // ループ回数をインクリメント
    @LOOP 
    0;JMP
(END)
    @END
    0;JMP  // 無限ループ
