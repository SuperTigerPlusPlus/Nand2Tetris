load EqualityChecker.hdl,
output-file EqualityChecker.out,
compare-to EqualityChecker.cmp,
output-list a%B1.6.1 b%B1.6.1 out%B3.1.3;

set a %B111111,
set b %B111111,
eval,
output;

set a %B000000,
set b %B000000,
eval,
output;

set a %B101010,
set b %B101010,
eval,
output;

set a %B101010,
set b %B010101,
eval,
output;
