=begin

Exception handling is a specific process that deals with errors in a manageable and predictable way. The main thing we want to make you aware of at this point, is how exception handling works and what it looks like. The reserved word rescue will show up a lot in your Ruby career so it's better to know what it is sooner than later.

When your programs are interacting with the real world, there is a large amount of unpredictability. If a user enters bad information or a file-manipulating process gets corrupted, your program needs to know what to do when it runs into these exceptional conditions.

Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. The basic structure looks like this.

# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example log, the error
end

Often, it is necessary to use exception handling when your program is interacting with the outside world, or anything that can behave in an unpredictable manner. One common occurrence of this is when a nil value makes its way into our program. We have to be prepared for this reality. Look at the following code and run it to test it out.
=end

# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# We've used a begin/rescue/end block to handle any exceptions that may happen within our block. In this example, we have a nil value in our array. Therefore, when we go to call .length on nil we get an error. When an exception, or error, is raised, the rescue block will execute and then the program will continue to run as it normally would. If we didn't have the rescue block there, our program would stop once it hit the exception and we would lose the rest of our print-out.