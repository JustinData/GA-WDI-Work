require 'spec_helper'
require_relative '../lib/bank'

describe Bank do
  let(:bank) {Bank.new}
  describe '::new' do
    exepect(bank).to_not eq nil
  end
end