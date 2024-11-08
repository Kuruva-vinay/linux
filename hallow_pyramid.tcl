#!/usr/bin/tclsh

# Set the number of rows for the pyramid
set rows 7

# Outer loop to iterate through each row
for {set i 0} {$i < $rows } {incr i} {

    # Print leading whitespaces for centering the pyramid
    for {set j 0} {$j < $rows - $i - 1} {incr j} {
        puts -nonewline " "
    }

    # Print stars and inner spaces
    for {set k 0} {$k < 2 * $i + 1} {incr k} {
        if {$k == 0 || $k == 2 * $i || $i == $rows - 1} {
            puts -nonewline "*"
        } else {
            puts -nonewline " "
        }
    }

    # Newline after each row
    puts ""
}
