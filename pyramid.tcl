#!/usr/bin/env tclsh

proc pyramid {rows} {
    for {set i 1} {$i <= $rows} {incr i} {
        # Print spaces for alignment
        puts -nonewline [string repeat " " [expr {$rows - $i}]]
        # Print asterisks with spaces in between
        puts [string repeat "* " $i]
    }
}

# Test the function with 5 rows
pyramid 5
