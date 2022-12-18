# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

=begin
Solution

a = "e"
b = "A"
c = nil

Notice that when you reference an index of a string that is beyond the length of the string, Ruby returns nil and doesn't throw an error.

=end

p a 
p b 
p c