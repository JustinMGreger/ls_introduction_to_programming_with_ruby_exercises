=begin

A do/while loop works in a similar way to a while loop; one important difference is that the code within the loop gets executed one time, prior to the conditional check to see if the code should be executed. In a "do/while" loop, the conditional check is placed at the end of the loop as opposed to the beginning. Unfortunately, Ruby doesn't have a built-in "do/while" loop -- we have to use loop and break to emulate the behavior of a "do/while" loop.

Let's write some code that asks if the user wants to perform an action again, but we'll keep prompting the user to enter 'Y' until they do. This is a classic use case for a "do/while", since we want to repeatedly perform an action based on some condition, but we want the action to be executed at least once no matter what.  

=end

# perform_again.rb

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != 'Y'
    break
  end
end

=begin
Notice that we're using a simple loop with a break condition at the end of the loop, therefore ensuring that the loop executes at least once. Try copying and pasting the above code into irb and playing with it. Compare this with a normal "while" loop.

Side note: there's also another construct in Ruby that supports "do/while" loops, like this:

begin
  puts "Do you want to do that again?"
  answer =gets.chomp
end

While the above works, it's not recommended by Matz, the creator of Ruby.

=end