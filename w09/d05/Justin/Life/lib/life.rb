class Board
	def initialize
		@grid = Array.new(4) { Array.new(4){Cell.new} }
	end

	def grid
		@grid
	end

	def populate_board
		@grid
	end
end

class Cell
	def initialize
	  @alive = false
	end

	def alive?
		@alive
	end
end
