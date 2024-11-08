#!/usr/bin/env tclsh

# Procedure to convert a list to a string (space-separated)
proc list_to_string {input_list} {
    return [join $input_list " "]
}

# Procedure to convert a string to a list (split by spaces)
proc string_to_list {input_string} {
    return [split $input_string " "]
}

# Test data
set sample_list [list "apple" "banana" "cherry"]
set sample_string "apple banana cherry"

# Convert list to string and display the result
set converted_string [list_to_string $sample_list]
puts "Converted list to string: $converted_string"

# Convert string to list and display the result
set converted_list [string_to_list $sample_string]
puts "Converted string to list: $converted_list"
