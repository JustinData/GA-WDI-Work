require 'spec_helper'

describe Chef do
  let(:chef) { Chef.create(name: "Aruntu", episode_id: 2) }
  let(:dish) { Dish.create(name: "polenta", chef_id: 2, round_id: 2) }
  it 'chef can make a dish' do
    chef.cook("chicken", 2)
    expect(Dish.where(name: "chicken").count).to eq(1) 
  end

  it 'expect chef to make a dish with proper arguments' do
    expect{chef.cook("cake")}.to raise_error ArgumentError
  end
end