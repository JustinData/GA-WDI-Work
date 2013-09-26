n_train = ["times square", "34th", "28th-n", "23rd-n", "union square"]
l_train = ["8th", "6th", "union square", "3rd", "1st"]
s_train = ["grand central", "33rd", "28th-s", "23rd-s", "union square"]
mta= {n: n_train, l: l_train, s: s_train}
trains = ["(N) train", "(L) train","(S)ix train"]

puts "Welcome to the MTA Subway System! The best darn train system this side of the Hudson!"
puts "These are the trains you can take:"

puts trains

puts "What train do you want to start your trip on??"
print ">"
train_choice = gets.chomp.downcase.to_sym

puts "What stop do you want to start at??"
puts mta[train_choice][0..5]
print ">"

start_trip = gets.chomp.downcase
  case start_trip
    when mta[train_choice][0]
        choice_1 = 0
    when mta[train_choice][1]
        choice_1 = 1
    when mta[train_choice][2]
        choice_1 = 2
    when mta[train_choice][3]
        choice_1 = 3
    when mta[train_choice][4]
        choice_1 = 4
    else
       puts "That's not a stop!"
    end

puts "Do you want to [stay] on this train or [transfer]"
transfer = gets.chomp
  if transfer == "transfer"
    
    point_of_transfer = "union square"
      case point_of_transfer
      when mta[train_choice][4]
        trip_1 = (4 -choice_1)
      when mta[train_choice][2]
        trip_1 = (2-choice_1).abs
      end
    
    puts "Which train do you want to transfer to?"
    puts trains
    print ">"
    transfer_to = gets.chomp.to_sym
    
    puts "Where do you want to go??"
    puts mta[transfer_to][0..5]
    print ">"
    last_stop= gets.chomp.downcase

    case last_stop
          when mta[transfer_to][0]
            choice_2 = 0
          when mta[transfer_to][1]
            choice_2 = 1
          when mta[transfer_to][2]
            choice_2 = 2
          when mta[transfer_to][3]
            choice_2 = 3
          when mta[transfer_to][4]
            choice_2 = 4
          else
            puts "That's not a stop!"
          end
          
      post_transfer = "union square"
      case post_transfer
      when mta[transfer_to][4]
        trip_2 = 4 - choice_2
      when mta[transfer_to][2]
        trip_2 = (2-choice_2).abs
      end
      puts "That's a trip of #{trip_1+trip_2} stops"

  else
    puts "Where do you want to go??"
    puts mta[train_choice][0..5]
    print ">"
    end_trip = gets.chomp.downcase
          case end_trip
          when mta[train_choice][0]
            choice_2 = 0
          when mta[train_choice][1]
            choice_2 = 1
          when mta[train_choice][2]
            choice_2 = 2
          when mta[train_choice][3]
            choice_2 = 3
          when mta[train_choice][4]
            choice_2 = 4
          else
            puts "That's not a stop!"
          end
          puts "That's a trip of #{trip_length = (choice_1 - choice_2).abs} stops"

  end


