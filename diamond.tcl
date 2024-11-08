#!/usr/bin/tclsh

# Set the number of rows for the upper half of the diamond
set n 7

# Loop through each row
for {set i 0} {$i < 2 * $n - 1} {incr i} {

    # Determine the number of leading spaces for the row
    if {$i < $n} {
        set spaces [expr {$n - $i - 1}]
    } else {
        set spaces [expr {$i - $n + 1}]
    }

    # Print leading spaces
    for {set j 0} {$j < $spaces} {incr j} {
        puts -nonewline " "
    }

    # Print stars with spaces in between
    set stars [expr {2 * ($n - $spaces) - 1}]
    for {set k 0} {$k < $stars} {incr k} {
        puts -nonewline "*"
    }

    # Newline after each row
    puts ""
}
