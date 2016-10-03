load EnhancedALU.hdl,
output-file EnhancedALU.out,
compare-to EnhancedALU.cmp,
output-list D%B1.16.1 AM%B1.16.1 cBits%B1.6.1 outM%B1.16.1 zr%B2.1.1 ng%B2.1.1;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B101010,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B111111,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B111010,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B001100,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B110000,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B001101,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B110001,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B001111,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B110011,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B011111,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B110111,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B001110,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B110010,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B000010,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B010011,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B000111,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B000000,
eval,
output;

set D %B0000000000000010,
set AM %B0000000000000100,
set cBits %B010101,
eval,
output;