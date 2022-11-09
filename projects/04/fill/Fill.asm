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
// keyboardを押したときM[24576]には値が入る。ここの処理は書かなくていい。

// Put your code here.
// keyが押されているとき(BLACK)に遷移。押されていないとき(WHITE)に遷移。
// M[0]: スクリーンのアドレスを指定
(LOOP)
    @16384
    D=A 
    @0
    M=D
    @24576
    D=M
    @WHITE 
    D;JEQ  // D=0の時WHITEに遷移
    @BLACK
    D;JNE  // D≠0の時BLACKに遷移
(BLACK)
    @0
    D=M
    @24576
    D=D-A
    @LOOP
    D;JEQ  // R0=24576の時ジャンプ
    @0
    A=M 
    M=-1
    @0 
    M=M+1  // インクリメント
    @BLACK 
    0;JMP  
(WHITE)
    @0
    D=M
    @24576
    D=D-A
    @LOOP
    D;JEQ  // R0=24576の時ジャンプ
    @0
    A=M 
    M=0
    @0 
    M=M+1  // インクリメント
    @WHITE 
    0;JMP   