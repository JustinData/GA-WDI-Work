require "pry"

classmates_strings = ["brad,sushi,bpuder0120","david,burgers,dtothefp","tom,wings,tommyb67"]

# binding.pry

new_string = Array.new
new_classmates = Array.new

classmates_strings.each do |x|
	new_string = x.split(",")
	new_classmates << new_string.join("|")
end

puts classmates_strings
puts new_classmates


# Write a procedure that will print the following to the console:
# Brad's favorite food is Sushi
# David's favorite food is Burgers
# Tom's favorite food is Wings

def display_classmates_strings(array_of_strings)
	
	array_of_strings.each do |x|
		temp_array = Array.new
		temp_array = x.split(",")		
		name = temp_array[0]
		food = temp_array[1]
		github = temp_array[2]

		puts "#{name}'s favorite food is #{food}"
	end

end

display_classmates_strings(classmates_strings)