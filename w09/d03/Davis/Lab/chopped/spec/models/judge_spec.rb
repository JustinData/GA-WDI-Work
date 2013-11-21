require 'spec_helper'

describe Judge do
  let(:judge) { Judge.new(name: "Bro") }
  let!(:chef) { Chef.new(name: "Tony") }

  describe '::new' do
    it 'has a name' do 
      expect(judge.name).to eq("Bro")
    end
  end

  describe '#rate_food' do
    before do
      chef.save!
      chef.make_dish("Meat")
    end

    it "rates a chef's food" do
      judge.rate_food("Tony", "Meat", 3)
      expect(chef.dishes[0].score).to eq(3)
    end
  end
end