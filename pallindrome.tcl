# Define the procedure to check for palindrome
proc isPalindrome {inputString} {
    # Remove any whitespace and convert to lowercase for case-insensitive comparison
    set inputString [string tolower [string trim $inputString]]
    
    # Reverse the string
    set reversedString [string reverse $inputString]
    
    # Check if the input string is equal to the reversed string
    if {$inputString eq $reversedString} {
        return 1 ;# It's a palindrome
    } else {
        return 0 ;# It's not a palindrome
    }
}

# Example usage
set inputString "madam"
if {[isPalindrome $inputString]} {
    puts "The string '$inputString' is a palindrome."
} else {
    puts "The string '$inputString' is not a palindrome."
}
