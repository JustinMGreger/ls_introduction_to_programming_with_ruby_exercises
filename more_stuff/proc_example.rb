=begin

Procs are blocks that are wrapped in a proc object (we'll cover objects in our object oriented programming book) and stored in a variable to be passed around. This is how you define a proc.

# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call

Procs can also take arguments if specified.
=end

# proc_example.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"