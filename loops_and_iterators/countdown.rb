# A while loop is given a parameter that evaluates as either true or false. Once that expression becomes false, the while loop is not executed again, and the program continues after the while loop. Code within the while loop can contain any kind of logic that you would like to perform. Let's try an example of a while loop by creating a file named countdown.rb. We want this program to count down from any number given by the user and print to the screen each number as it counts. Here we go!
=begin

# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"

Now go to your terminal and run this program with ruby countdown.rb. You'll notice that the program initially waits for you to put in a number then executes the loop.

Initially the program evaluates the line x >= 0. This evaluates as true (unless you entered a negative number) and so the program enters the loop, executing puts x and the line after that, x = x - 1. Then the program returns to the top, now with the newly updated value of x and evaluates the x >= 0 again. This process repeats until the value of x is no longer greater than or equal to 0. It then exits the loop and continues with the rest of the program. You can see why it's called a loop. It loops over the logic within itself repeatedly.

We'd also like to take this opportunity to show you a small trick for refactoring this loop.


# countdown.rb

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1 # <- refactored this line
end

puts "Done!"

We changed the line x = x - 1 to x -= 1. This is common to many programming languages and it's a nice succinct way to say the same thing with less typing. You can use it with any other operator as well (+, *, /, etc.).

You should also be aware that because we're using the x >= 0 expression as the test to see if we should execute the loop, the code within the loop must modify the variable x in some way. If it does not, then x >= 0 will always evaluate to true and cause an infinite loop. If you ever find your program unresponsive, it's possible that it is stuck in an infinite loop.

One last note: unlike the loop method, while is not implemented as a method. One consequence of this difference is, that unlike loop, a while loop does not have its own scope -- the entire body of the loop is in the same scope as the code that contains the while loop:

x = 0
while x < 5
  y = x * x
  x += 1
end

puts y # 16

As you can see, even though y is initialized in the body of the while loop, it's still in scope after the loop finishes running.

We didn't mention the until loop in the introduction paragraph. We do, however, need to mention it briefly so that you know about it. The until loop is simply the opposite of the while loop. You can substitute it in order to phrase the problem in a different way. Let's look briefly at how it works.

=end

# countdown.rb

x = gets.chomp.to_i

until x < 0
  puts x 
  x -= 1
end

puts "Done!"

=begin

There are instances when using until will allow you to write code that is more readable and logical. Ruby has many features for making your code more expressive. The until loop is one of those features.

As with while loops, until is not a method. Therefore, until loops do not have their own scope.

=end