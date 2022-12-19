=begin
a = [1, 2, 3]

#Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

#Notice the difference between each print out? We have permanently modified the array that local variable a references by passing it to the mutate method, even though a is outside the method definition's scope. This is because the pop method mutates its calling object (the array specified by array). a is still pointing to the same array, but, in this case, the number of elements in the array has changed.

Let's contrast this with a method that does not mutate the argument but still returns the same value.

a = [1, 2, 3]
# Example of a method definition that does not mutate the argument
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"

You'll notice that we have the same output before and after the method invocation, so we know that a was not modified in any way. This is because the last method does not mutate the calling object, array, on line 5, so the array passed to no_mutate is not mutated.
How do you know which methods mutate arguments and which ones don't? Unfortunately, you have to memorize it by looking at the documentation or through repetition.
Now that you know what a method is and how it works, we can discuss the difference between puts and return. You haven't really been properly introduced to return but that's because in Ruby, every method returns the evaluated result of the last line that is executed.
Let's use our mutate.rb file to demonstrate this.
=end

a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

=begin
Here's what's happening:
We print out a as we initially defined it.
We print out the value returned by the mutate method.
We print out the value of a after the mutate method.
The second line, where it's returning a "3", is probably confusing you a little bit. What's happening is that the method is returning the result of array.pop back to where it's being called from. pop is a method in the Array class that removes the last element of an array and returns it.
=end