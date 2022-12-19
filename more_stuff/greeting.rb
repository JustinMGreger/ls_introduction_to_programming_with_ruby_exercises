=begin

Create a file with the following and name it greeting.rb and run it with ruby greeting.rb.

def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)

The purpose/functionality of this code is simple, but maybe a quick walkthrough might still be helpful. First we define a method greet, which expects one parameter. The idea is that we can write a line of code that says:

greet("Jack")

And it should output:

Hello, Jack

When we run the script greeting.rb, we get one correct greeting, and one error as output - don't panic! We're going to take the error output line by line and understand what it means.

$ ruby greeting.rb
Hello, John
greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'

The first use of the greet method supplies a String as the parameter, and so the output is what you'd expect it to be. But when we pass 1 as the argument into the greet method, we get a TypeError exception. We already mentioned the first line: it's the error type and the error message. But what do the other lines mean?

Part of this involves understanding how execution works within Ruby, involving the 'stack'. When Ruby invokes a method, the method is added to Ruby's 'stack'. In the simple example above when we called greet("John"), program execution would look like this:

main -> greet -> puts -> exit and return to main

Now we can make a little more sense of the output from the error, as it provides a detailed trace (known as a stack trace) that shows the flow of execution and where the error occurred. Such traces rely on Ruby's call stack, which we discussed in the Methods chapter.

In the second method invocation, greet(1), an error occurs and the program execution flow didn't exit back to main, and stayed in the greet method. The program execution looks like this:

main -> greet -> puts

Now, let's revisit the error:

greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'

The stack trace first tells us where the error occurred and why: line 2 of greeting.rb, and the error was because the types don't match. The error occured due to the call made in the 'main' context on line 6, which contains the line that called the method with incorrect arguments, line 2.

This is a shorter error stack trace than most. Let's take a look at a slightly more complex example. Note: try not to worry about anything you don't understand in the code yet, just pay attention to the stack trace and how it allows you to see what called which method, and provides a trail of calls.

=end

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

=begin

Save this to greeting.rb and run it, and you should see the following output:

H e l l o, J o h n
greeting.rb:2:in `space_out_letters': undefined method `split' for 1:Integer (NoMethodError)
from greeting.rb:6:in `greet' from greeting.rb:10:in `decorate_greeting'
from greeting.rb:14:in `<main>'

The first example works as expected, the latter causes an exception. Ordinarily this should pass the execution flow through as following:

main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main

Looking at the stack trace, you can see this happening: on line 14 (the beginning of the chain where the error originated) the decorate_greeting method is called. It then identifies line 10, where the greet method is called by decorate_greeting, and then line 6 where greet calls space_out_letters. Because the split method expects a string, we get an error, along with a trace of the calls that lead up to that error. In a small script this is less useful, but in a larger codebase, being able to trace the execution flow is a very useful way to drill down to the source of the error.

=end