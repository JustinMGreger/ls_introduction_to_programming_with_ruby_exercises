# Let's look at a more useful example with the break keyword by creating a file named useful_loop.rb:

# useful_loop.rb

i = 0
loop do
  i = i +1
  puts i
  break  # this will cause execution to exit the loop
end

=begin
When you run useful_loop.rb in your terminal, the output should be:

$ ruby useful_loop.rb
1

=end

# The break keyword allows us to exit a loop at any point, so any code after a break will not be executed. Note that break will not exit the program, but only exit the loop and execution will continue on from after the loop.
