def display_trains(system)
	system.keys.join(' , ')
end

#system is a hash. the [ ] look up a key inside the hash. in this case, we are looking up a train inside a hash
def display_stops(system, train)
	system[train].join(' . ')
end


n = ['ts', '34th', '28th-n', '23rd-n', 'us','8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']

mta = {n: n, l: l, s: s}


puts mta

puts "What train do you want to get on? #{display_trains(mta)}"
on_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, on_train)}"
on_stop = gets.chomp

puts "What train do you want to get off? #{display_trains(mta)}"
off_train = gets.chomp.to_sym
puts "Which stop? #{display_stops(mta, off_train)}"

if on_train != off_train
	#intersection uses operator & ... arrray of getting on & array of getting off and .first shows first intersection.. & returns an array
	intersection = (mta[on_train] & mta[off_train]).first
	#.first pulls the first thing from the array and makes it into a string- you cannot use an array later, you need to pull the string
	on_stop_index = mta [on_train].index(on_stop)
	on_stop_intersection_index = mta[on_train].index(on_stop)
	before_transfer_length = (on_stop_index - on_stop_intersection_index).abs

	total_trip_length = (before_transfer_length + after_transfer_length)
else
	on_stop_index = mta[on_train].index(on_stop)
	off_stop_index = mta[off_train].index(off_stop)
	total_trip_length = (on_stop_index - off_stop_index).abs
end

puts "Your trip length is #{total_trip_length} stops"