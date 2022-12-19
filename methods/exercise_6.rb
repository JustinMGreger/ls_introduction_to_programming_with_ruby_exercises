=begin
What does the following error message tell you?

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

Solution: You are calling a method called calculate_product that requires two arguments, but you are only providing one.

def calculate_product(number1, number2)
  number1 * number2
end
calculate_product(4) #only 1 argument here. Need an additional argument.

example of how to fix this is below:
=end

def calculate_product(number1, number2)
  number1 * number2
end
calculate_product(4, 2)