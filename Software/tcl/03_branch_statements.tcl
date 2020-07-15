set A 1;
set B "delicious_cake";
set C "Not delicious_cake";


## IF ELSE
puts "\nIf/Else Examples\n"

if {$A==1} { 
	puts "A is ${A}";
}
if $A==1 {
	puts "A is ${A}";
}

# note the following only works with brackets around $B=="..."
# so may be best practice to always include just in case...
if {$B=="delicious_cake"} {
	puts "B is $B";
} else {
	puts "$B is not delicious_cake";
}

if {$C=="delicious_cake"} {
	puts "C is $C";
} else {
	puts "C is not delicious_cake";
}


## Switch statements
puts "\nSwitch Examples\n"

switch $A {
	"$B" {
		puts "A is $B"
	}
	2 {
		puts "A is 2"
	}
	1 {
		puts "A is 1"
	}
	default {
		puts "A is none of these"
	}
}



