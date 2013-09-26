person1 = {:person_name => "David Copperfield", :person_hometown => "Metuchen"}
person2 = {:person_name => "Syphilis Rivendell", :person_hometown => "Brooklyn"}
dog = {:dog_name => "Sparky", :dog_hometown => "Manhattan"}

def say_persons_name
  puts "#{person1[:person_name]} is from #{person1[:person_hometown]}"
end
