    @i  // iはメモリの特定の場所を参照する
    M=1 // i=1
    @sum
    M=0
(LOOP)
    // -----------------ここからループするかの判定----------------
    @i 
    D=M
    @100
    D=D-A // D=ループ回数-100
    @END
    D;JGT // D>0ならば、ENDに行く
    // ------------------sumに値を加算する----------------
    @i
    D=M
    @sum
    M=M+D 
    // ------------------iをインクリメントする----------------
    @i 
    M=M+1
    // ------------------LOOPに無条件で戻る----------------
    @LOOP
    0;JMP
(END)
    @END
    0;JMP