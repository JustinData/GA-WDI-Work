require 'spec_helper'

describe Chef do
  let(:chef) { Chef.new(name: "Tony") }

  describe '::new' do
    it 'has a name' do
      expect(chef.name).to eq("Tony")
    end
  end
end