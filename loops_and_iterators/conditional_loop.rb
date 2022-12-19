# Next, let's look at adding conditions within a loop by printing all even numbers from 0 up to 10. Let's create a file named conditional_loop.rb

# conditional_loop

i = 0
loop do
  i = i + 2
  puts i
  if i == 10
    break      # this will cause execution to exist the loop
  end
end

=begin

Here's the output when we run the file:

ruby conditional_loop.rb
2
4
6
8
10

You can see from the above that break was not executed during the first 4 iterations through the loop, but on the 5th iteration, the if statement evaluated as true and so the code within the if statement was executed, which is just break, and execution exited the loop.

=end