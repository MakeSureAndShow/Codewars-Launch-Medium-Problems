# Problem is asking us to find the missing letter in a string, missing when it doesn't have the same count as others
# Mainly we will count and return the highest number, then use a data structure hash to keep track of the count,
# then iterate over the hash, if item is less than highest count, then add to the string

# Algorithm:
# count and return the highest number
# create a hash to keep track of the each individual letter count
# iterate over the hash, append to empty string each letter the difference between it and the highest count

def highest_count(string)
  for_last = [0]
  string.chars { |letter| for_last << string.chars.count(letter) if string.chars.count(letter) > for_last.last }
  for_last.last
end

def task_alphabet(string)
  hash = Hash.new
  # create a hash of all alphabets
  "a".upto("z") { |letter| hash[letter] = highest_count(string) }
  string.chars.each do |letter|
    hash[letter] -= 1 
  end
  
  result = ''
  hash.each do |key, value|
    result << key * value
  end
  result
end

p task_alphabet('aabcdefghijklmnopqrstuvwxy')