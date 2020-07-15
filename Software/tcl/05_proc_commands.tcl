proc multiply_accumulate {A B C} {
	#A = A + B * C
	set A [expr {$A + $B * $C}];
	return $A;
}

puts "MAC on 1 2 3 is: [multiply_accumulate 1 2 3]\n"

# Command overriding
# overiding switch command

proc switch {a b c} {
	puts "this was a puts for $a $b $c\n"
}

switch 1 2 3 
