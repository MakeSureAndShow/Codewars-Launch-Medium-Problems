def scramble(s1,s2)
  string_array = s2.chars
  string_arr = s1.chars
  
  string_array.each do |letter|
    return false unless string_arr.join.include?(letter)
    string_arr.delete_at(string_arr.index(letter))
  end
  true
end

p scramble('katas','steak')