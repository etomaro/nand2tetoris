load Mux4.hdl,
output-file Mux4.out,
compare-to Mux4.cmp,
output-list a%B3.4.3 b%B3.4.3 sel%B2.1.2 out%B3.4.3;

set a %B0000,
set b %B0000,
set sel %B0,
eval,
output;

set a %B0101,
set b %B0001,
set sel %B1,
eval,
output;

set a %B0111,
set b %B1110,
set sel %B0,
eval,
output;

set a %B1111,
set b %B1111,
set sel %B1,
eval,
output;
