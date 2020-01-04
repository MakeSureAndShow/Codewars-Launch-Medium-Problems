# Problem is asking us to find the pair that first adds up to a given number
# Use double loop to loop over the array elements twice, then return both if answer suffices

# Algorithm 1:

def sum_pair(array, number)
  arr = []
  array.each_with_index do |el, idx|
    array.each_with_index do |ele, index|
      next if idx == index
      arr << [el, ele] if el + ele == number && index > idx
    end
  end
  array.reverse!
  arr.sort_by! do |subarray|
    array.index(subarray.last)
  end
  arr.last
end



# Algorithm 2:

def sum_pairs(array, number)
  arr = []
  array.reverse.each_with_index do |el, idx|
    array.reverse.each_with_index do |ele, index|
      next if idx == index
      arr << [el, ele] if el + ele == number && index > idx
    end
  end
  return nil if arr.empty?
  arr.last.reverse
end

p sum_pairs([10, 5, 2, 3, 7, 5],         10)