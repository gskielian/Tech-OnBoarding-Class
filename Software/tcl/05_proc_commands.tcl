proc multiply_accumulate {A B C} {
	#A = A + B * C
	set A [expr {$A + $B * $C}];
	return $A;
}

puts "MAC on 1 2 3 is: [multiply_accumulate 1 2 3]"

# Command overriding
# overiding switch command

proc switch {a b c} {
	puts "this was a puts for $a $b $c\n"
}

switch 1 2 3 

# default values for arguments
# default for b for example is "9"

proc print_args {a {b 9}} {
	puts "a is $a"
	puts "b is $b"
}
 
puts "\nprint_args 1"
print_args 1

puts "\nprint_args 1 2"
print_args 1 2


# use the "args" keyword to hold variable number of trailing args
proc print_many {a b args} {
	puts "a is $a"
	puts "b is $b"
	puts "remaining are is $args"
}

puts "\nprint_many 1 2 3"
print_many 1 2 3 
# note that args variable will absorb all following args
puts "\nprint_many 1 2 3 4"
print_many 1 2 3 4
puts "\nprint_many 1 2 3 4 5"
print_many 1 2 3 4 5

