=begin
This is an example of a method definition named say:

def say
  # method body goes here
end

There's a comment in the method body to show you where the logic for the method definition will go. Why do we want a method named say? To say something, of course! Suppose we had the following code in a file named say.rb. Create this file and type these examples along.

  puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

Notice how we've duplicated the puts many times. We'd like to have one place where we can puts and send that one place the information we want to puts. Let's create a method definition to do that.

def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

On first glance this may seem silly, since we didn't save any lines of code, and in fact added more code. But what we've done is extracted the logic of printing out text, so that our program can have more flexibility.
We call (or invoke) the method by typing its name and passing in arguments. You'll notice that there's a (words) after say in the method definition. This is what's called a parameter. Parameters are used when you have data outside of a method definition's scope, but you need access to it within the method definition. If the method definition does not need access to any outside data, you do not need to define any parameters.

...One of the benefits that methods give us is the ability to make changes in one place that affect many places in our program. Suppose we wanted to add a . at the end of every string we send to the say method. We only have to make that change in one place.

def say(words)
  puts words + '.'    ## <= We only make the change here!
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

Run this code using the ruby say.rb command from your terminal to see the result. We've now added a . on each line and we only had to add it once in our program. Now you're starting to see the power of methods.

When you're defining methods you may want to structure your method definition so that it always works, whether given arguments or not. Let's restructure our say method definition again so that we can assign a default parameter in case the calling code doesn't send any arguments.
=end

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

=begin
You'll notice that say() prints hello. to the console. We have provided a default parameter that is used whenever our method is called without any arguments. Nice!
=end