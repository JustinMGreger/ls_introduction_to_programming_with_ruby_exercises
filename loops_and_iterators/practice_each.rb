=begin

Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

We said earlier that arrays are ordered lists. Let's say that you had an array of names and you wanted to print them to the screen. How could you do that? You could use the each method for arrays, like this:

# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }

=begin

Isn't that concise! We've got a lot of explaining to do with this one.

We have called the each method using the dot operator (.) on our array. What this method does is loop through each element in our array, in order, starting from 'Bob'. Then it begins executing the code within the block. The block's starting and ending points are defined by the curly braces {}. Each time we iterate over the array, we need to assign the value of the element to a variable. In this example we have named the variable name and placed it in between two pipes |. After that, we write the logic that we want to use to operate on the variable, which represents the current array element. In this case it is simply printing to the screen using puts.

Run this program to see the output.

A block is just some lines of code ready to be executed. When working with blocks there are two styles you need to be aware of. By convention, we use the curly braces ({}) when everything can be contained in one line. We use the words do and end when we are performing multi-line operations. Let's add some functionality to our previous program to try out this do/end stuff.

=end

# practice_each.rb

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

=begin

We've added the counter x to add a number before each name, creating a numbered list output. The number x is incremented every time we go through the iteration.

Memorizing these small differences in syntax is one of the necessary tasks a Ruby programmer must go through. Ruby is a very expressive language. Part of what makes that possible is the ability to do things in more than one way.

There are many other iterator methods in Ruby, and over time, you'll get to use a lot of them. For now, know that most Rubyists prefer to use iterators, like the each method, to loop over a collection of elements.

=end