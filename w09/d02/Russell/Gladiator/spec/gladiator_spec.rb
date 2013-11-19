require 'spec_helper'
require_relative '../lib/gladiator'

describe Arena do 
  let(:arena) { Arena.new}

  describe '::new' do
    it 'creates a new arena' do
      expect(arena).to_not eq nil
   end
  end
end
