set A 1;

puts "\n While Loop Examples \n";
# Note: spaces around the "<" are optional
while {$A < 10} {
	puts "A is now $A, A is less than 10";
	#following is a shorthand for increment `set A [expr {$A + 1}]`;
	set A [expr {$A + 1}];
}

puts "escaped the loop, A is now $A";

# break example
puts "\n break and continue example\n";
while {$A < 100} {

	#following is a shorthand for increment `set A [expr {$A + 1}]`;
	incr A;

	if {$A == 13} continue; # skip number 13
	if {$A == 20} break; # break out of loop early

	puts "A is now $A";
	puts "A is less than 100";
}

puts "escaped the loop, A is now $A";

## For Loop example
puts "\n For Loop Example \n";

for {set x 0} {$x < 3} {incr x} {
	puts "x is $x";
}

