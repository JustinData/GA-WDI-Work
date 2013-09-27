require_relative 'building'
require_relative 'apartment'

class Person
  attr_accessor :name, :age, :gender, :apartment 
  $tenant

  def initialize
  @name
  @age
  @gender
  @apartment
  end

  def make_person
        puts "What's their name?"
        @name = gets.chomp
        puts "How old are they?"
        @age = gets.chomp
        puts "What's their gender?"
        @gender = gets.chomp
        puts "What apartment number do they have?"
        @apartment = gets.chomp
        $tenant.push(@name,@age,@gender,@apartment)
      end
  
  def to_s
    puts "#{name} who is #{@age} years old, and is #{@gender}: lives in apartment #{@apartment}."
  end

  def apartment  
    new_apartment = Apartment.new
    new_apartment.make_apartment(@apartment)
  end
end
