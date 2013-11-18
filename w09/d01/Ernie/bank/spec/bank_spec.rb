require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) { Bank.new("Chase") }

  describe '::new' do
    it 'creates a new bank' do
      expect(bank).to_not eq nil
    end

    it 'has a name' do
      expect(bank.name).to eq("Chase")
    end
  end

  describe "#new_account"do
    it 'allows user to create account'do
      expect(bank.new_account).to eq nil
    end
  end
    

end