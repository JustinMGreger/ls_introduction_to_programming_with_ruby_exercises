# We can also rescue pre-existing errors when we are writing our code. Let's look at doing something like that with a divide method.

# divide.rb

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

=begin 

Here we are rescuing the ZeroDivisionError and saving it into a variable e. We then have access to the message method that the ZeroDivisionError object has available.

If this is confusing at this point, don't worry. As you learn more about classes and objects in the coming chapters, you can revisit this section, and it will be much clearer. For now, you need to understand that as you write Ruby programs you can anticipate errors that you may run into and handle them properly so that your whole program isn't broken by one error.

=end