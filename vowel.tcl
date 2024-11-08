# Define the procedure to count vowels
proc countVowels {inputString} {
    # Define the list of vowels
    set vowels [list a e i o u A E I O U]
    set count 0

    # Loop through each character in the input string
    foreach char [split $inputString ""] {
        # Check if the character is in the list of vowels
        if {$char in $vowels} {
            incr count
        }
    }

    # Return the count of vowels
    return $count
}

# Example usage
set inputString "Hello, World!"
set vowelCount [countVowels $inputString]
puts "The number of vowels in '$inputString' is $vowelCount."
