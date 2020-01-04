# Use a double loop to add to result the worth of each word, then append it to the array. Exploit the refreshing of the loop 
# with result = 0. Find the index of the highest number, then return the array at index of h number. 

HASH = { 'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8, 'i' => 9, 
         'j' => 10, 'k' => 11, 'l' => 12, 'm' => 13, 'n' => 14, 'o' => 15, 'p' => 16, 'q' => 17, 'r' =>  18, 
         's' => 19, 't' => 20, 'u' => 21, 'v' => 22, 'w' => 23, 'x' => 24, 'y' => 25, 'z' => 26 }
         
def highest_scoring(string)
  arr = []
  string.split(' ').each do |word|
    result = 0
    word.chars.each do |letter|
      result += HASH[letter]
    end
    arr << result
  end
  
  string.split(" ")[arr.index(arr.max)]
end

p highest_scoring('man i need a taxi up to ubud')