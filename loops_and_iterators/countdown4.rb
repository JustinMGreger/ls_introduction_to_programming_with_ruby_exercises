# The odd thing about the for loop is that the loop returns the collection of elements after it executes, whereas the earlier while loop examples return nil. Let's look at another example using an array instead of a range.

# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts "Done!"

=begin

In this case, we had to reverse the array to ensure a proper countdown. Otherwise, the loop would have counted up.

You can see there are a lot of ways to loop through a collection of elements using Ruby. Let's talk about some more interesting ways you can use conditions to modify the behavior of your loops. Most Rubyists forsake for loops and prefer using iterators instead. We'll cover iterators later.

As with the while and until loops, for is not implemented as a method. Therefore, a for loop does not have its own scope -- the entire body of the loop is in the same scope as the code that contains the for loop.

=end