require 'spec_helper'
require_relative '../lib/stuff'


def test(desc_string, it_string, &block)
  describe desc_string do 
    it it_string do
      yield
    end
  end
end

describe Stuff do
  before do 
    # setup usuable scope as global
    $t = self
  end

  let(:stuff) { Stuff.new }

  test '::new', 'it exists' do 
    $t.expect($t.stuff).to_not $t.be_nil
  end

  test '#property', 'it has a property' do
    $t.expect($t.stuff.property).to_not $t.be_nil
    $t.expect($t.stuff.property).to $t.eq(10)
  end

  test '#talk', 'it can talk' do 
    $t.expect($t.stuff.talk).to $t.eq("ello")
  end
end

