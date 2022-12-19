# Procs can be passed into methods. Let's take our previous passing_block.rb code and modify the method to take a proc instead. We'll add some more functionality too.

#passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)

=begin

Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.

It's not critical that you understand blocks and procs well enough to write methods with them yet. The goal of this section is to give you a general idea of what they are, in case you come across these concepts while reading Ruby code.

=end