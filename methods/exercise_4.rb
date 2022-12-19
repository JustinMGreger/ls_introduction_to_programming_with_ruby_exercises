=begin
What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return  #explicit return causes ruby to exit from the method. Subsequent code will not be executed.
  puts words #this line will never be executed as a result.
end

scream("Yippeee") #"Yippeee!!!!"

#solution: It will not print anything to the screen.
1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

1. def scream(words)
      words = words + "!!!!"
      puts words #removed the explicit return.
    end

    scream("Yippeee")

 2. still returns nil
=end

def scream(words)
  words = words + "!!!!"
  puts words #output of nil
end
p scream("Yippeee") #output of "Yippeee!!!!"