require 'spec_helper'

describe User do
  let(:user) {User.new}

  describe "#name" do
    context "no name" do
      it "isn't valid" do
        expect(user).to have(1).errors_on(:name)
      end 
    end

    context "has name" do
      before do
        user.name = "Jeff"
    end

    it "is valid" do
      expect(user).to have(0).errors_on(:name)

      end
      describe "#email" do
        context "no email" do
          it "isn't valid" do
            expect(user).to have(1).errors_on(:email)
          end
        end

      context "has email" do
        before do
          user.email = "jeff@jeff.com"
      end

      it "is valid" do
        expect(user).to have(0).errors_on(:email)
      end

      context "email exists" do
        before do
          user.name = "jeff"
          user.save! #this is actually persisting it to db
      end

      let(:another_user) {User.new(name: "Some Person", email: "jeff@ga.com")}
      it "is not valid" do
        expect(another_user).to have(1).errors_on(:email)
      end
    end

    context "email doesn't exist" do
      it "is valid" do
        expect(user).to have(0).errors_on(:email)
      end
    end
      end
    end
  end
end
end
