// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
    // スクリーンアドレスをR0に保存
    @SCREEN    // @16384
    D=A 
    @R0
    M=D
    // キーボードアドレスの値が0かどうか調べる(入力があるかどうか)
    @KBD    // @24576
    D=M
    @FILLWHITE
    D;JEQ    // 0の場合ジャンプ
    @FILLBLACK
    0;JMP    // 0ではない場合ジャンプ

(FILLWHITE)
    // R0の値によってジャンプ
    @R0
    D=M
    @24575    // スクリーンの最後のマップメモリアドレス
    D=D-A    // R0-24575
    @LOOP
    D;JEQ    // 0の場合ジャンプ
    // R0に保存されているアドレスの値を0にする
    @R0
    A=M
    M=0
    //  R0をインクリメント
    @R0
    M=M+1

    //  FILEWHITEにジャンプ(ループ)
    @FILLWHITE
    0;JMP

(FILLBLACK)
    // R0の値によってジャンプ
    @R0
    D=M
    @24575    // スクリーンの最後のマップメモリアドレス
    D=D-A    // R0-24575
    @LOOP
    D;JEQ    // 0の場合ジャンプ
    // R0に保存されているアドレスの値を1111111111111111(-1)にする
    @R0
    A=M
    D=0
    M=!D
    //  R0をインクリメント
    @R0
    M=M+1

    //  FILEBLACKにジャンプ(ループ)
    @FILLBLACK
    0;JMP
