class TicTacToe
  attr_reader :all_rows, :current_color

  def initialize
    @current_color = "black"

    @row0 = [nil, nil, nil]
    @row1 = [nil, nil, nil]
    @row2 = [nil, nil, nil]
    @all_rows = [@row0, @row1, @row2]
  end

  def all_columns
    @row0.zip(@row1, @row2)
  end

  def make_move(row_num, column_num)
    puts "Error: spot already taken!" unless @all_rows[row_num][column_num].nil?
    @all_rows[row_num][column_num] ||= set_current_color
      
    if check_winner
      puts "#{@current_color} wins!"
    elsif check_tie
      puts "A tie!"
    else
      nil
    end
  end

  private

  def set_current_color
    @current_color = @current_color == "red" ? "black" : "red"
  end

  def entire_row_current_color?(array)
    array.all? { |c| c == @current_color }
  end

  def any_three_in_a_row?(array)
    array.any? do |row|
      entire_row_current_color?(row)
    end
  end

  def diagonal_combo?
    diag1 = [@row0[0], @row2[2]]
    diag2 = [@row0[2], @row2[0]]
    
    if @row1[1] == current_color
      entire_row_current_color?(diag1) || entire_row_current_color?(diag2)
    end
  end

  def check_winner  
    all_columns = @row0.zip(@row1, @row2)
    any_three_in_a_row?(@all_rows) || any_three_in_a_row?(all_columns) || diagonal_combo?
  end

  def check_tie
    @all_rows.all? do |row|
      row.all? { |c| c != nil }
    end
  end
end

game = TicTacToe.new
game.make_move(2, 1)
p game.all_rows
