=begin

The reserved words next and break can be useful when looping as well.

If you place the next reserved word in a loop, it will jump from that line to the next loop iteration without executing the code beneath it. If you place the break reserved word in a loop, it will exit the loop immediately without executing any more code in the loop.

=end

# conditional_while_loop_with_next.rb

x = 0
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end

# We use the next reserved word here to avoid printing the number 3 in our loop. 