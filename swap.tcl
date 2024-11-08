
set ip "192.30.40.1"
set swapped_ip [regsub -all {30|40} $ip {40 30}]
set swapped_ip [string map {"40 30" "40" "30 40" "30"} $swapped_ip]
puts "Swapped IP address: $swapped_ip"
