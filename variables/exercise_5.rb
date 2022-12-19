=begin
Look at the following programs...
x = 0
3.times do
  x += 1
end
puts x
and...
y = 0
3.times do
  y += 1
  x = y
end
puts x
What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
Solution
The first prints 3 to the screen. The second throws an error undefined local variable or method because x is not available as it is created within the scope of the do/end block.
=end

=begin
This code works.
x = 0
3.times do
  x += 1 # x = x + 1
end
puts x
=end
 
=begin
This code has an error.
y = 0
3.times do
  y += 1
  x = y
end
puts x
The error is undefined local variable or method `x' for main:Object (NameError)
puts x
     ^
=end

#The following is the solution.
y = 0
x = 0 #initialize x in the outerscope.
3.times do
  y += 1
  x = y
end
puts x