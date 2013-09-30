require './hello' #these are file paths
require './goodbye'
require './questions/how_are_you.rb'
require 'pry' #the gem that debugs your program

puts "What's your name?"
name = gets.chomp

#if there's an error thrown on line 10 then add this code above it: 
#binding.pry --> this is the code to enter above the line of code.
#go into pry and run the program. 
hello(name)
how_are_you?(name)
goodbye(name)