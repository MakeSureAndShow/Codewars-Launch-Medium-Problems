# Problem is asking us to order the string numbers by their digit sum
# Mainly we will be converting the string numbers into array to sum them up, then use sort_by

# Algorithm:
# Convert them into an array of numbers
# Convert them into an array of digit turned sum turned numbers
# Call sort_by before the above

def weight_for_weight(string)
  string = string.split(" ").map(&:to_i) # sort by integer digits sum
  string.sort_by! do |number|
    number.digits.sum
  end
  array = [[string[0]]] # create subarrays that belong to each other in integer digits sum
  string.each do |number| 
    if number.digits.sum != array.last.last.digits.sum && 
      array << [number]
    else
      array.last << number if number.digits.sum == array.last.last.digits.sum && string[0] != number
    end
  end
  arr = [] # sort the subarrays by the to_s order
  array.each do |subarray|
    arr << subarray.sort_by { |element| element.to_s }
  end
  arr.flatten.join(" ")
end

p weight_for_weight("2000 10003 1234000 44444444 9999 11 11 22 123")