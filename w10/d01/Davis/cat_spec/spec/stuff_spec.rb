require 'spec_helper'
require_relative '../lib/stuff'


def write_test(desc_string, it_string, &block)
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

  write_test("description", "it thang") do
    stuff = $t.stuff
    $t.expect(stuff.property).to_not $t.be_nil
  end
end

