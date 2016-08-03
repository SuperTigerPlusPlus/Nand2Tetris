load EqualityChecker.hdl,
output-file EqualityChecker.out,
compare-to EqualityChecker.cmp,
output-list a%B1.5.1 b%B1.5.1 out%B3.1.3;

set a %B11111,
set b %B11111,
eval,
output;

set a %B00000,
set b %B00000,
eval,
output;

set a %B10101,
set b %B10101,
eval,
output;

set a %B10101,
set b %B01010,
eval,
output;
