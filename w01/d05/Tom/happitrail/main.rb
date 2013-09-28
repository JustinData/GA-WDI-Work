require 'pry'
require './happitrail'


happi_trails = Shelter.new("Happi Trails")
#def menu
  puts "Hello welcome to the Happi Trail Shelter"
  puts "What would you like to do today?"
  puts "Become a (C)lient (A)dopt or (R)eturn a pet or (Q)uit the app?"
  response = gets.chomp.downcase

  if response == "c"
    happi_trails.add_client
  elsif response == "a"
    add_animal
  elsif response == "r"
    return_animal
  elsif response == "q"
    puts "So Long!!"
    abort
  else
    puts "Please pick C, A, R or Q"
  end


#end



#puts happi_trails






