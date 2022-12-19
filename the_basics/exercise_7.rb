=begin
What does the following error message tell you?
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
There is an opening bracket somewhere in the program without a closing bracket following it. It may have happened when creating a hash.
car = { make: 'Toyota',
        model: 'Prius' )
exercise_7.rb:8: syntax error, unexpected ')', expecting '}'
        model: 'Prius' )
A ) was were a } should have been on line 8 that results in the syntax error. 
By replacing ) with a } the syntax error is fixed.
=end
car = { make: 'Toyota',
        model: 'Prius' }