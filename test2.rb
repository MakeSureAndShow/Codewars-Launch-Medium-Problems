# Consider the main declarative and the main method at once before writing pseudocode, but first understand the problem out loud
# Do a subprocess algorithm instead if the problem seems too complex, needing various layers - simpler problem first
# Set more variables to simplify use in code
# If statements prioritizes the most universally applicable conditions first
# Find instance algorithm problems for extra practice

# The problem is asking us to print the number of rows with each row increasing by two and decreasing by two once reach the middle
# Mainly we will be printing a row with parameters grid size and distance from edge to compute the length of the row, distance supplied
# Ask yourself: will supply function affect the conditional for the interval/distance? Supply simply supplies the numbers.
# it is up to the method print row itself to define the number of *'s 

# Algorithm:
# Create a print row method 
# Create a method that supplies values to parameter in print row using upto and downto

def print_row(grid_size, distance_from_edge)
  number_of_stars = 1 + distance_from_edge * 2
  stars = "*" * number_of_stars
  puts stars.center(grid_size)
end

def main_method(grid_size)
  center = grid_size / 2
  0.upto(center) { |num| print_row(grid_size, num) }
  (center - 1).downto(0) { |num2| print_row(grid_size, num2) }
end

main_method(9)
