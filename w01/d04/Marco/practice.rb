#this is a type of template
class MyClass
  #replaces "!!!!!!!!!!" (4 down)
  attr_accessor :tables, :chairs

  # Attr_reader :tables, :chairs
  # Attr_writer :tables, :chairs

  
  # if you don't have "initialize", it will run nil - it sets a default state for the methods
  def initialize
    @tables = "none"
    @chairs = "none"
  end

  #"!!!!!!!!!!!!"
  # def tables=( param1 )
  #   @tables = param1
  # end

  # def chairs=( param1 )
  #   @chairs = param1
  # end

  # def tables
  #   return @tables
  # end

  # def chairs
  #     return @chairs
  #   end

  def whadda_we_got
    puts "OK, we got some #{@tables} tables here!"
    puts "AND SOME #{@chairs} CHAIRS, TOO!"
  end

  # def what_else_we_got
  #   whadda_we_got
  # end
end

my_class = MyClass.new

puts my_class.class
puts my_class.tables"white"
puts my_class.chairs "BLACK"
puts my_class.whadda_we_got