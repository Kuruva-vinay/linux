proc multiply_without_ops {a b} {
    if {$b == 0} { return 0 }
    return [expr $a * [expr $b > 0 ? 1 : -1] + multiply_without_ops $a [expr abs($b)-1]]
}

set num1 5
set num2 4
puts "Multiplication result: [multiply_without_ops $num1 $num2]"
