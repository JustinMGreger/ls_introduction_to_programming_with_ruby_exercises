# In Ruby, for loops are used to loop over a collection of elements. Unlike a while loop, where if we're not careful we can cause an infinite loop, a for loop has a definite end since it's looping over a finite number of elements. It begins with the for reserved word, followed by a variable, then the in reserved word, and then a collection of elements. We'll show this using an array and a range. A range is a special type in Ruby that captures a range of elements. For example 1..3 is a range that captures the integers 1, 2, and 3.
# countdown3.rb

x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts "Done!"