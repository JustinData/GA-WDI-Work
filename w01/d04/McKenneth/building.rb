require_relative 'person'
require_relative 'apartment'

class Building
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
  
  $apartments = {}
  
  def initialize(address, style, has_doorman, is_walkup, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @is_walkup = is_walkup
    @num_floors = num_floors
  end
  
  def to_s
    puts "Address: #{@address}"
    puts "This building is #{@style}, #{@has_doorman}, is #{@is_walkup}, and is #{@num_floors}"
  end

  def add_apartment(key, value)
    $apartments = {key =>value}
  end

  def list_apartments
    if $apartments.empty?
      puts "No residents yet"
    else
      puts $apartments
    end
  end


end
