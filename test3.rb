# Consider the main declarative and the main method at once before writing pseudocode, but first understand the problem out loud
# Do a subprocess algorithm instead if the problem seems too complex, needing various layers - simpler problem first
# Set more variables to simplify use in code
# If statements prioritizes the most universally applicable conditions first
# Find instance algorithm problems for extra practice

# The problem asks us to determine true or false true being the block has been used twice and false once or none
# Mainly we will be incrementing in a data structure for each block include, then we will count the number of occurences

# Algorithm:
# Create a hash and set all the values to 0
# Iterate and loop over the letters in the string
#   Iterate through the block to find the letter applicable, then increase it if includes
# Finally, count all the values to see if it is under 2

HASH = { %w(B O) => 0, %w(X K) => 0, %w(D Q) => 0, %w(C P) => 0,
         %w(N A) => 0, %w(G T) => 0, %w(R E) => 0, %w(F S) => 0,
         %w(J W) => 0, %w(H U) => 0, %w(V I) => 0, %w(L Y) => 0,
         %w(Z M) => 0 }

def block_word?(string)
  letters = string.upcase.chars
  
  letters.each do |letter|
    HASH.each_key { |array| HASH[array] += 1 if HASH.include?(letter) }
  end
  
  p HASH.values.all? { |value| value < 2 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true