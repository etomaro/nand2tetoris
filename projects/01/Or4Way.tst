load Or4Way.hdl,
output-file Or4Way.out,
compare-to Or4Way.cmp,
output-list in%B2.4.2 out%B2.1.2;

set in %B0000,
eval,
output;

set in %B1111,
eval,
output;

set in %B0101,
eval,
output;

set in %B0001,
eval,
output;

set in %B1110,
eval,
output;
