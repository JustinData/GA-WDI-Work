require 'spec_helper'

describe User do
  let(:user) {User.new}

  describe "#name" do
    context "no name" do
      it "isn't valid" do
        expect(user).not_to be_valid
      end
    end

    context "has name" do
      before do
       user.name = "Jeff"
     end

      it "is valid" do
        expect(user).to be_valid
      end
    end
  end
end
