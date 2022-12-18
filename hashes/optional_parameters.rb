# You may recall in chapter three on methods, we talked about the ability to assign default parameters to your methods so that the output is always consistent. You can use a hash to accept optional parameters when you are creating methods as well. This can be helpful when you want to give your methods some more flexibility and expressivity. More options, if you will! Let's create a method that does just that.

#optional_parameters.rb

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]}" +
    " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})

# We used Ruby hash's empty? method to detect whether the options parameter, which is a hash, had anything passed into it. You haven't seen this method yet but you can infer what it does. You could also check out the Ruby Docs to look up the method as well. At the end we called the method twice. Once using no optional parameters, and a second time using a hash to send the optional parameters. You can see how using this feature could make your methods much more expressive and dynamic.

# And finally, to add a small twist, you can also pass in arguments to the greeting method like this:

greeting("Bob", age: 62, city: "New York City")

# Notice the curly braces, { }, are not required when a hash is the last argument, and the effect is identical to the previous example. This convention is commonly used by Rails developers. Understanding this concept alone should help you decipher some previously cryptic Rails code!