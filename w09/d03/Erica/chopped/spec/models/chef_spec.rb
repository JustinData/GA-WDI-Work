require 'spec_helper'

describe Chef do 
  context "has valid attributes" do
    let(:chef) do
      Chef.new(name: "Emeril Lagasse")
    end

    it "is valid" do
      expect(chef).to be_valid
    end   
  end

  context "has invalid attributes" do
    let(:chef) do
      Chef.new(name: nil)
    end    

    it "is invalid" do
      expect(chef).to have(1).errors_on(:name)
    end
  end

  context "four chefs in total" do
    before do
      Chef.create(name: "Alain Ducasse")
      Chef.create(name: "Wolfgang Puck")
      Chef.create(name: "Anthony Bourdain")
      Chef.create(name: "Barefoot Contessa")
    end

    it "has four chefs maximum" do
      expect(chef).to be_valid
    end
  end
end