load And4.hdl,
output-file And4.out,
compare-to And4.cmp,
output-list a%B3.4.3 b%B3.4.3 out%B3.4.3;

set a %B0000,
set b %B0000,
eval,
output;

set a %B0101,
set b %B0001,
eval,
output;

set a %B0111,
set b %B1110,
eval,
output;

set a %B1111,
set b %B1111,
eval,
output;