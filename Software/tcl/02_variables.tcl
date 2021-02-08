set A "Hello";
set B "World";
set C 3.14;
set D 2.71;

puts $A;
puts $B;
puts "$A $B";
puts $C;
puts $D;

set E [expr {$C + $D}]; # remember to place a space between "expr" and the "{"

puts $E;
