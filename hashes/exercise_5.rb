# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

# Solution

# value?

opposites = {positive: "negative", up: "down", right: "left"}

if opposites.value?("negative")
  puts "Got it!"
else
  puts "Nope!"
end
