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
    it 'makes a dish' do
      chef.make_dish("Halva")
    end
  end
end