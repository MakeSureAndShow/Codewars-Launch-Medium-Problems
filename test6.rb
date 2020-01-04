# The problem is asking us to find all the anagrams in an array provided a string
# Use the select method to select from array all that count is same, may transform string into array

# Algorithm: 
# convert string_anagram identifier to an array
# use the method select for the array of possible anagrams
#   Iterate over the string_anagram as well, count is same for each number using all?
# return join

def anagrams(string, array)
  string_anagram = string.chars
  
  array.select! do |word|
    word.chars.all? do |letter|
      word.chars.count(letter) == string_anagram.count(letter)
    end
  end
  array
end

anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) 

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) 

anagrams('laser', ['lazing', 'lazy',  'lacer']) 