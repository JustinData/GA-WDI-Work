require 'spec_helper'

describe Chef do
  let!(:chef) { Chef.new(name: "Tony") }

  describe '::new' do
    it 'has a name' do
      expect(chef.name).to eq("Tony")
    end

    it 'starts with no dishes' do
      expect(chef.dishes.count).to eq(0)
    end
  end

  describe '#make_dish' do
    before do
      chef.save!
    end

    it 'makes a dish' do
      chef.make_dish("Halva")
      expect(Dish.find_by(name: "Halva").name).to eq("Halva")
    end
  end
end