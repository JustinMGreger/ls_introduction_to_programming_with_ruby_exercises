=begin

Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

Solution:

The method parameter block is missing the ampersand sign & that allows a block to be passed as a parameter.
=end

def execute(&block) # add & to block.
  block.call
end

execute { puts "Hello from inside the execute method!" }