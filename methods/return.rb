=begin
Before we wrap this up, let's look at return by itself so we can fully understand it. Let's create a file called return.rb to demonstrate. Remember to type these examples out and create the files, your fingers are learning without you knowing it! Let's go!

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

Here we're assigning the returned_value to the value returned by the add_three method. Then we print returned_value to the output to see what it has inside it. Your output should print 7 because that's what the method call returned.

Ruby methods ALWAYS return the evaluated result of the last line of the expression unless an explicit return comes before it.

If you wanted to explicitly return a value you can use the return keyword.

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value

Your output should still be the same, right? What happens if we change this again? What will print to the screen, if we run the code below?
=end

def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

=begin
The program above should still output 7, the number you told it to return.

When you place a return in the middle of the add_three method definition, it just returns the evaluated result of number + 3, which is 7, without executing the next line.
=end