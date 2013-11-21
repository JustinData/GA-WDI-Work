require 'spec_helper'

describe Episode do
  let(:episode) do
    Episode.new(name: "first")
  end

  it "is valid if it has all the attributes" do
    expect(episode).to be_valid
  end

  it "is invalid if it has more than 3 rounds" do
    expect(episode).to have(1).errors_on(:round)
  end

end
