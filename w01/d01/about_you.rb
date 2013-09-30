user = {}
 
puts "What's your name"
user[:name] = gets.chomp
 
user[:platforms] = {}
 
# user
# => {:name => "Aby", :platforms => { } }
 
social_platforms = [:twitter, :linkedin, :facebook]
 
social_platforms.each do |platform|
puts "What's your username at #{platform.to_s}?"
user[:platforms][platform] = gets.chomp
end
 
puts user