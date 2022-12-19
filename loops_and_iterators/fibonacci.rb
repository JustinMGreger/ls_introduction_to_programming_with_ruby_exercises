# Make the following file:

# fibonacci.rb

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

=begin

If you're panicking, don't be scared. Soon this will be simple to you. We just have to take it slow and understand everything that's going on, line-by-line. Recursion is a tricky subject for all programmers, so don't let this frustrate you any more than a healthy amount. When learning recursion, drawing diagrams can help. We can use a tree like structure to see what is happening. (We used f to abbreviate fibonacci to save space.)
Each time the code branches off again you are calling the fibonacci method from within itself two times. If you take all of those ones and zeros and add them together, you'll get the same answer you get when you run the code. You can see why computer programs are handy now. Think if you had to draw that diagram out every time you wanted to know the fibonacci representation of a number. Yikes!

The key concept with recursion is that there is some baseline condition that returns a value, which then "unwinds" the recursive calls. You can think of the successive recursive calls building up, until some value is returned, and only then can the recursive calls be evaluated.

=end