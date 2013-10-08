class MailItem(ship_to_address, stamp_value)
  def ship_to_address 
  end

  def stamp_value
  end
end

class Postcard <MailItem

def message 
  print "Greetings from Alaska!"
end
def return_to_message
  if Postcard.exists? == "false"
    return #
  end
end

class Package <MailItem
  content = []
def is_fragile 
  puts "Is the package fragile? (yes/no)"
  if puts.chomp.downcase == "yes"
    content << is_fragile
  elsif puts.chomp.downcase == "no"
    is_broken
  end
end

def shake
  puts "Is the package shaken? (yes/no)"
  if puts.chomp.downcase == "yes"
    puts "Your package is broken."
    content << shake
  elsif puts.chomp.downcase == "no"
    puts "Your package is not broken."
  end
end 

def is_broken


end


