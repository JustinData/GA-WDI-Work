require 'spec_helper'

describe User do
  let(:user) { User.new }

  describe '#name' do
    context 'no name' do
      it 'isnt valid' do
        # testing intersection of AR validation & name method
        expect(user).not_to be_valid
        #or expect(user.valid?).to eq(false)
          # valid? is AR behavior inherited from AR base
      end
    end

    context 'has name' do
      before do
        user.name = "Jeff"
      end

      it 'is valid' do
        expect(user).to be_valid
      end
    end
  end
end
