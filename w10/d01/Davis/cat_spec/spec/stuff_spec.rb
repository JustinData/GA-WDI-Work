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
    $t = self
  end

  write_test("description", "it thang") do
    $t.expect(nil).to $t.eq(nil)
  end
end

