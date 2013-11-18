require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) {Bank.new("Bankify")}

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil
    end
  end
    it 'has a name' do
    expect(bank.name).to eq("Bankify")
  end

  it 'has no users' do
    expect(bank.users.count).to eq(0)
  end
end

describe '#create_account' do
  it "creates a savings acct in bank" do
    bank.create_account("Maria Theuser", 200)
    expect(bank.users.count).to eq(1)
  end

end
