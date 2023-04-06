
------------------------------学習の流れ------------------------------
1.0 組み合わせ回路と順路回路
1.1 ALUの作成
   ・NAND -> さまざまな論理ゲートの作成(ORやXORなど) -> 論理回路(ALU)を作成する
   ・1章、2章
   ・keyward: 論理回路(ALU)
   ・AND, AND16, DMux, DMux4Way, DMux8Wway, Mux, Mux4Way16, Mux8Way16, Mux16,
     Not, Not16, Or, Or8Way, Or16, Xor, Add16, ALU-nostart, ALU,
     FullAdder, HalfAdder, Inc16
1.2 記憶装置RAMの作成
   ・flip-flop -> 
   ・3章
   ・keyward: 記憶素子(順序回路)
   ・Bit, Pc, Ram8, Register, Ram64, Ram4k, Ram16k, Ram512k
2.  アセンブリ言語を使って(6章で作成するアセンブラで変換した機械語)でメモリ、プロセッサ、レジスタを操作
   ・4章
3.  アセンブリ言語を機械語(バイナリ)に変換するアセンブラの作成
---------------------------------------------------------------------


---------------------------各章で作成するもの---------------------------
(Hardware)
1章.  AND, AND16, DMux, DMux4Way, DMux8Wway, Mux, Mux4Way16, Mux8Way16, Mux16,
      Not, Not16, Or, Or8Way, Or16, Xor, Add16
2章.  ALU-nostart, ALU, FullAdder, HalfAdder, Inc16
3章.  Bit, Pc, Ram8, Register, Ram64, Ram4k, Ram16k, Ram512k
4章.  fill(入出力), mult(乗算)
5章.  Computer, ComputerAdd-external, ComputerAdd, ComputerMax-external,
      ComputerMax, ComputerRect-external, ComputerRect, CPU-external, 
      CPU, Memory

(Software)
6章.  add, max, pong, rect 
7章.  MemoryAccess(Basic, Pointer, Static), StackArithmetic(SimpleAdd, StackTest)
8章.  FunctionCalls(FibonacciElement, NestedCall, SimpleFunction, StaticsTest)
      ProgramFlow(BasicLoop, FibonacciSeries)
9章.  Average, BitmapEditor, Fraction, HelloWorld, List, Square
10章. ArrayTest, ExpressionLessSquare, Square
11章. Average, ComplexArrays, ConvertToBin, Pong, Seven, Square
12章. Array, Keyboard, Math, Memory, Output, Screen, String, Sys
---------------------------------------------------------------------


---------------------------ソフトウェアツール---------------------------
1. ハードウェアシュミレーター
   ->論理回路、論理ゲートをテストする(ALUなど)
2. CPUエミュレーター
   ->バイナリファイル(.hack)を実行する
3. VMエミュレーター
   ->
4. アセンブラ
   ->アセンブリ言語(.asm)をバイナリ(.hack)に変換する
5. Jackコンパイラ
   ->
6. オペレーティングシステム
   ->
7. テキスト比較
   ->

--動かすときのコマンド(mac)--
・HardwareSimualtor
権限付与
$ chmod +x ~/Desktop/nand2tetoris/tools/HardwareSimulator.sh &
起動
$ ~/Desktop/nand2tetoris/tools/HardwareSimulator.sh &
テスト 
$ ~/Desktop/nand2tetoris/tools/HardwareSimulator.sh & Memory.tst
$ HardwareSimulator Add16.tst 

・CPUEmulator
$ chmod +x ~/Desktop/nand2tetoris/tools/CPUEmulator.sh &
$ ~/Desktop/nand2tetoris/tools/CPUEmulator.sh &
$ ~/Desktop/nand2tetoris/tools/CPUEmulator.sh & Fill.tst

・Assembler
$ chmod +x ~/Desktop/nand2tetoris/tools/Assembler.sh &
$ ~/Desktop/nand2tetoris/tools/Assembler.sh &

---------------------------------------------------------------------

--------------------------shコマンド--------------------------------
1. 新しくロジックを作成する(.hdl,.tst,.cmpファイルが作成される)
実行はprojects/01で行う
$ sh create_new_rogic.sh NEW_ROGIC_NAME FOLDER
ex: create_new_rogic.sh And4 01

