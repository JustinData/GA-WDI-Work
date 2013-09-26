n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

    puts "What line would you like to start on?"
    #(this will return symbol of the mta hash down cased)
    puts "Choose N, L, S"
    start_line = gets.chomp.downcase

    # show the user the stops that are available
    puts "On what stop would you like to board?"
    puts "Please choose: #{mta[:"#{start_line}"].map { |i| "'" + i.to_s + "'" }.join(",")}"



    #def journey

    #end



    #board_station = mta[:"#{start_line}"]
    #this will return index position of the stop on the chosen lines array




     # puts "What stop would you like to travel to?"
     # # this need to return the index position, in the line array and the symbol of the line
     # end_station = gets.chomp
#end


