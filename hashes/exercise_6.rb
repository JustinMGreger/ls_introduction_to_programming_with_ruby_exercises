=begin
Given the following code...
=end 

x = "hit there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p my_hash  # {:x=>"some value"}
p my_hash2 # {"hi there"=>"some value"}
=begin
What's the difference between the two hashes that were created?

solution

The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.

=end