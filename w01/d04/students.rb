students = ["remy the dog", "pj", "jeff", "peter"]

students.each. do |x|
  if x.downcase == "pj"
    puts "welcome to class #{x.upcase}"
  else
    puts "welcome to class #{x.capitalize}"
  end
end

