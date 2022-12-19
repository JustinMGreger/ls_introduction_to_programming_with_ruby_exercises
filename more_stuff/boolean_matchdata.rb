# You can use a MatchData object to act as a boolean value in your program. Try this out:

# boolean_matchdata.rb

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match!"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")

=begin

We get the same print out as before!

Beginning programs rarely need to use regular expressions, but certain problems are a perfect fit for them. Solving some programs without regex may require monumental effort. However, with a regex, you may be able to solve the problem with a single line of code. If you encounter a string pattern matching problem, remember to look into using regex.

=end