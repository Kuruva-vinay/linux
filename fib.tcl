proc fibonacci {limit} {
    set a 0
    set b 1
    puts $a
    puts $b
    for {set i 2} {$i < $limit} {incr i} {
        set c [expr $a + $b]
        puts $c
        set a $b
        set b $c
    }
}
fibonacci 100
