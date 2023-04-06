load ALU4.hdl,
output-file ALU4.out,
compare-to ALU4.cmp,
output-list x%B1.4.1 y%B1.4.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 
            ny%B1.1.1 f%B1.1.1 no%B1.1.1 out%B1.4.1 zr%B1.1.1
            ng%B1.1.1;

set x %B0000,  // x = 0
set y %B1111;  // y = -1

// 1. Compute 0
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 2. Compute 1
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 3. Compute -1
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 4. Compute x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 0,
eval,
output;

// 5. Compute y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// 6. Compute !x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 1,
eval,
output;

// 7. Compute !y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 1,
eval,
output;

// 8. Compute -x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 9. Compute -y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// 10. Compute x + 1
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 11. Compute y + 1
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 12. Compute x - 1
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 0,
eval,
output;

// 13. Compute y - 1
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 14. Compute x + y
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 15. Compute x - y
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// 16. Compute y - x
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 17. Compute x & y
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// 18. Compute x | y
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f  0,
set no 1,
eval,
output;

set x %B0101,  // x = 5
set y %B0011;  // y = 3

// 19. Compute 0
set zx 1,
set nx 0,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 20. Compute 1
set zx 1,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 21. Compute -1
set zx 1,
set nx 1,
set zy 1,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 22. Compute x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 0,
eval,
output;

// 23. Compute y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// 24. Compute !x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  0,
set no 1,
eval,
output;

// 25. Compute !y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  0,
set no 1,
eval,
output;

// 26. Compute -x
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 27. Compute -y
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// 28. Compute x + 1
set zx 0,
set nx 1,
set zy 1,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 29. Compute y + 1
set zx 1,
set nx 1,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 30. Compute x - 1
set zx 0,
set nx 0,
set zy 1,
set ny 1,
set f  1,
set no 0,
eval,
output;

// 31. Compute y - 1
set zx 1,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 32. Compute x + y
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  1,
set no 0,
eval,
output;

// 33. Compute x - y
set zx 0,
set nx 1,
set zy 0,
set ny 0,
set f  1,
set no 1,
eval,
output;

// 34. Compute y - x
set zx 0,
set nx 0,
set zy 0,
set ny 1,
set f  1,
set no 1,
eval,
output;

// 35. Compute x & y
set zx 0,
set nx 0,
set zy 0,
set ny 0,
set f  0,
set no 0,
eval,
output;

// 36. Compute x | y
set zx 0,
set nx 1,
set zy 0,
set ny 1,
set f  0,
set no 1,
eval,
output;
