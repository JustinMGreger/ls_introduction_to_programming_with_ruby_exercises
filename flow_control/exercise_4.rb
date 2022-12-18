# What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.

# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") # '4' is a string which is not == 4 which is an integer therefore "FALSE".

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3) # 2 * 3 = 6 / 2 = 3. 4 + 4 - 2 - 3 = 8 - 5 = 3. 3 == 3 therefore "Did you get it right?".
  puts "Did you get it right?"
else
  puts "Did you?"
end

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y) # 10 + 1 = 11 <= 9 is false.
  puts "Alright."
elsif (x +1) >= (y) # 10 + 1 = 11 >= 9 is true therefore "Alright now!".
  puts "Alright now!"
elsif (y + 1) == x # 9 + 1 = 10 == 10 is true. However the above elsif occured first so this does not get executed.
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end