# To make loops more effective and precise, we can add conditional flow control within them to alter their behavior. Let's use an if statement in a while loop to demonstrate.

# conditional_while_loop.rb

x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

# This loop uses the odd? method to decide if the current variable in the loop is odd. If it is, it prints to the screen. Next,x increments by one, and then the loop proceeds to the next iteration.