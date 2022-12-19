=begin

We talked about blocks earlier in this book but we're going to go a little deeper and show you some of the power of blocks. Blocks, like parameters, can be passed into a method just like normal variables. This isn't incredibly hard, and it's very powerful. Let's look at how we accomplish this.

# passing_block.rb

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

In this example, the ampersand (&) in the method definition tells us that the argument is a block. You can name it anything you want. The block must always be the last parameter in the method definition. When we're ready to use the method, we call it like any other method: take_block. The only difference is that since this method has an &block parameter, we can pass in a block of code using do/end. As you can see, we've been using blocks all along, but this is the first time we've defined our own method that takes a block as an argument.

Inside the take_block method, we tell Ruby to invoke the block argument by using block.call.

Let's make this more complex. Say we wanted to pass an argument to the method as well.
=end 

# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

# Here we are passing the numberinto the take_block method and using it in our block.call. You can see the amount of flexibility and the myriad possibilities that come into play when using blocks.