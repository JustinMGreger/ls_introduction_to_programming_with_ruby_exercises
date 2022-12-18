=begin
The final conditional flow structure that we want to talk about is called a case statement. A case statement has similar functionality to an if statement but with a slightly different interface.
Case statements use the reserved words case, when, else, and end. You create one by first defining a case and then evaluating the value of the case and what operation to complete if that case is true. As always, talking about this stuff is much harder than simply observing how the code behaves. Let's create a file called case_statement.rb to play with some case statements and see how they work.

# case_statement.rb

a = 5

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#This example is roughly equivalent to the following if/elsif/else statement:

# if_statement.rb

a = 5
if a ==5
  puts "a is 5"
elsif a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#The chief differences are that we only need to specify the variable we want to test once (as the argument to case) and we don't specify a == on the individual when statements.

#You can also save the result of a case statement into a variable. Let's refactor the code above to do just that. This way we don't have to write puts so many times.

# case_statement.rb <-- refactored

a = 5

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer

=end

#There's a second form of the case statement that doesn't take an argument:

# case_with_no_arg_statement.rb

a = 5

case
when a == 5
  puts "a is 5"
when a ==6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

#The difference here is that we don't provide an argument on line 5, and we have to fully test each value with a ==; most developers prefer to use if/elsif/else/end instead, but there are situations where this form is preferred. We won't get into that here.

#As you can see, there are lots of uses for case statements and they can be very powerful tools when writing Ruby programs. Remember, if you're uncomfortable with these, spend some time modifying them and watching how they respond to the changes you make. Test their boundaries to see what they are capable of. Curiosity will serve you well in your journey to learning Ruby. There is much to discover!