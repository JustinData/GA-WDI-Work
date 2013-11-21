require 'spec_helper'

describe Chef do

  let(:chef) { Chef.new }

  describe '#name' do
    context "with a name" do
      it "is valid" do
        chef.name = "Pierre"
        expect(chef).to be_valid
      end     
    end

    context "with no name" do
      it "isn't valid" do
        expect(chef).to have(1).errors_on(:name)
      end
    end
  end

  describe '#make dish' do
    it "creates a dish" do
      chef.name = "Joe"
      chef.id = 2
      expect(chef.make_dish("Penne", chef.id)).to be_persisted
    end
  end

  describe "#get chef's dishes" do
    context "chef has made a dish"
      before do
        chef.name = "Joe"
        chef.id = 2
        chef.save!
        chef.make_dish("Penne", chef.id)
      end

      it "returns dishes created by chef" do
      expect(chef.dishes.count).to be >= 1
    end
  end
end