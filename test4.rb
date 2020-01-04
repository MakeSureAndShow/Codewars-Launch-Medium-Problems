# Consider the main declarative and the main method at once before writing pseudocode, but first understand the problem out loud
# Do a subprocess algorithm instead if the problem seems too complex, needing various layers - simpler problem first
# Set more variables to simplify use in code
# If statements prioritizes the most universally applicable conditions first
# Find instance algorithm problems for extra practice

# The problem is asking us to find if there is an equal side in an array where both sides sum is equal to another
# Mainly we will be using each.with_index to iterate through the index and return index if equal

# Algorithm:
# Iterate with index through the array
#   Create two other methods that sum up the array sides, taking in argument index 
# Return the index if the two methods equal each other
# Return -1
def sum_left(array, index)
  array[0..index].sum
end

def sum_right(array, index)
  array[index..-1].sum
end

def find_even_index(arr)
  arr.each.with_index do |_, index|
    if sum_left(arr, index) == sum_right(arr, index)
      return index
    end
  end
  -1
end
