require 'spec_helper'

describe User do
  describe "#name" do 
    context "no name" do 
      it "isn't valid" do 
        expect(user).not_to be_valid 
      end 
    end 

    context "has name" do 
      before do 
        user.name = "Ann"
      end 
      
      it "is valid" do 
      end 
    end 
  end 
end
