require 'spec_helper'
require_relative '../lib/life'
require_relative '../lib/cell'

describe "Board" do 
	let(:board) {Board.new}

	it "The board exists" do
		expect(board).to be_an_instance_of(Board)
	end

	describe 'has an 4x4 (#grid)' do
  	it 'The board has structure' do
  		expect(board.grid).to be_an_instance_of(Array)
  	end

  	it 'Has 4 rows' do
  		expect(board.grid.length).to eq(4)
  	end

  	it 'Has 4 columns' do
  		expect(board.grid.length).to eq(4)
  	end

    it 'The grid contatns cells' do
      expect(board.grid[0][0]).to be_an_instance_of(Cell)
    end
	end

  describe '#populate_board' do
    it 'populates the board with living cells' do
      expect(board.grid.flatten.any? { |cell| cell.alive? }).to eq(true)
    end
  end
end


describe Cell do
  let(:cell) {Cell.new}
  it '::new' do
    expect(cell).to_not be(nil)
  end
end