load InstructionDecoder.hdl,
output-file InstructionDecoder.out,
compare-to InstructionDecoder.cmp,
output-list c%B1.6.1 outA%B1.9.1 outB%B1.9.1;

set c %B101010,
eval,
output;

set c %B111111,
eval,
output;

set c %B111010,
eval,
output;

set c %B001100,
eval,
output;

set c %B110000,
eval,
output;

set c %B001101,
eval,
output;

set c %B110001,
eval,
output;

set c %B001111,
eval,
output;

set c %B110011,
eval,
output;

set c %B011111,
eval,
output;

set c %B110111,
eval,
output;

set c %B001110,
eval,
output;

set c %B110010,
eval,
output;

set c %B000010,
eval,
output;

set c %B010011,
eval,
output;

set c %B000111,
eval,
output;

set c %B000000,
eval,
output;

set c %B010101,
eval,
output;

//Test some gibberish
set c %B110110,
eval,
output;

set c %B111100,
eval,
output;

set c %B111000,
eval,
output;
