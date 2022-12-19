# We'll talk explicitly about using conditionals within a loop later. Similar to how we use break to exit a loop, we can use the keyword next to skip the rest of the current iteration and start executing the next iteration. We'll use the same example as before to demonstrate. This time we'll skip 4.

# next_loop.rb

i = 0
loop do
  i = i + 2
  if i == 4
    next      # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

=begin

And here's the output when we run the file.

ruby next_loop.rb
2
4
8
10

Notice that the above code did not print out 4, because that was skipped over. Execution continued to the next iteration of the loop.

break and next are important loop control concepts that can be used with loop or any other loop construct in Ruby, which we'll cover one by one below. When combined with conditionals, you can start to build simple programs with interesting behavior.

=end