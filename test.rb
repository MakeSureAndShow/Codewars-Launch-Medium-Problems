# Consider the main declarative and the main method at once before writing pseudocode, but first understand the problem out loud
# Do a subprocess algorithm instead if the problem seems too complex, needing various layers - simpler problem first
# Set more variables to simplify use in code
# If statements prioritizes the most universally applicable conditions first
# Find instance algorithm problems for extra practice

# The problem is asking us to sort by comparison two numbers possibility from left to right and do it again until sorted. 
# Mainly we will use if statement for comparison correct, true false for break, loop to loop over again.

# Algorithm:
# Loop over and over again until comparison is true
#   If counter == length, counter = 0 again, only break when is_true is true by all comparison
# If comparison is false, swap, else, next and continue the loop

def bubble_sort(array)
  counter = 1
  counter1 = 0
  loop do
    if array[counter] < array[counter - 1]
      array[counter], array[counter - 1] = array[counter - 1], array[counter]
    end
    counter += 1
    counter1 += 1 if counter == array.length 
    counter = 1 if counter == array.length 
    break if counter1 == array.length
  end
  array
end

  