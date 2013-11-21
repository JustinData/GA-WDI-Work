require 'spec_helper'

describe Dish do
  let(:dish) { Dish.new(name: "Halva") }

  describe '::new' do
    it 'has a name' do
      expect(dish.name).to eq("Halva")
    end

    
  end
end