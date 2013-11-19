require 'spec_helper'

describe User do
  let(:user) {User.new}

  describe "#name" do
    context "no name" do
      it "isn't valid" do 
        expect(user.valid?).to eq(false)
      end
    end

    context "has name" do
      before do
        user.name = "Jeff"
      end

      it "is valid" do
        expect(user.valid?).to eq(true)
      end
    end
  end
end
