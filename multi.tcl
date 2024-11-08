#!/usr/bin/env tclsh

# Procedure to multiply two numbers without using *, /, or loops
proc multiply {a b} {
    # Handle negative numbers
    if {$b < 0} {
        return [expr {-[multiply $a [expr {-1 * $b}]]}]
    } elseif {$b == 0} {
        return 0
    } elseif {$b == 1} {
        return $a
    } else {
        # Recursive call to add 'a' b times
        return [expr {$a + [multiply $a [expr {$b - 1}]]}]
    }
}

# Test the function
set x 6
set y 7
puts "$x * $y = [multiply $x $y]"
