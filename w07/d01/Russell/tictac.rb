class Tictac

  def intialize
  
    @board = [[nil, nil, nil], [nil,nil,nil], [nil, nil,nil]]
    @counter = 1 
  end

  def move(x,y)

    if (counter % 2 == 0)
      marker == "X"
    else 
      marker == "O"
    end
  end
end

if @board[x][y].nil?
  @board[x][y] = marker
  @counter += 1
else
  puts "You shall not pass! (so to speak)"
end

return self
end



new game = Tictac.new

while counter <= 9
  user_x = gets.chomp.to_i
  puts "Make your move"
  print "X >"
  user_y = gets.chomp.to_i
  puts "Make your move"
  print "Y >"
  new_game_move = tictac.move(user_x, user_y)
end

# computer

