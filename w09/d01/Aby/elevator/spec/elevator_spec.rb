### Pair Activity

require 'spec_helper'
require_relative '../lib/elevator'

describe Elevator do
  let(:elevator) { Elevator.new }

  describe '::new' do
    it 'creates a new elevator' do
      expect(elevator).to_not eq nil
    end

    it 'has ten floors' do
      expect(elevator.floors.length).to eq(10)
    end

    it 'goes up' do
      expect(elevator.direction).to eq("up")
    end

    it 'starts at the bottom floor' do
      expect(elevator.floor).to eq("f1")
    end
  end

  describe '#trip' do

    # it 'knows start and end floor' do
    #   expect(elevator.trip("f2", "f4")).to be_true
    # end

    # it 'makes a trip' do
    #   expect(elevator.trip("f2", "f4")).to eq("f4")
    # end


    before do 
      elevator.trip("f1","f5")
    end
    it 'only goes UP from the bottom floor' do 
      expect(direction).to eq("up")
    end

    # it 'only goes DOWN from the top floor' do
    #   expect(elevator.trip("f10","f5").direction).to eq("up")
    # end
  end
end

