#conditional.rb
puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

=begin
Here we are using gets to let the user input a number, chomp gets rid of the new line created when the user enters the data, and to_i is a method that can be called on a string to turn it into an integer. We need to convert the input into an integer because gets always gives us a string.

Run this code three times and do the following:

The first time, type in the number 3 and press enter.
The second time, type in the number 4 and press enter.
The third time, type in any number that isn't 3 or 4 and press enter.
You can repeat the third step more than once to see its effect.
What your code is doing is checking, using the == operator you learned previously, to see if the input is equal to the number we have defined. We have effectively controlled the flow of the program by setting conditionals in an if statement. Nice work!
=end