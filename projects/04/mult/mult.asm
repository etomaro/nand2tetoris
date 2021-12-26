// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.b 

// LOOP前: 
// LOOP: 4*5とした時に5回ループする。(R1回数分ループ)
    @R0 
    @R1
    @R2
    M=0
    @i  // LOOP確認変数
    M=0
(LOOP)
    @i
    D=M
    @R1
    D=D-M
    @END
    D;JGE    // Dが0以上ならLOOPを終了
    @R0 
    D=0    //Dレジスタを初期化
    D=D+M // R0の値をDレジスタに足す
    @R2
    M=D+M    // 結果をR2に保存
    @i
    M=M+1    // LOOP確認変数をインクリメント
    @LOOP
    0;JMP
(END)
    @END 
    0;JMP
