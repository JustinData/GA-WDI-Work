require 'spec_helper'

describe Judge do
  let(:judge) { Judge.create(name: "Tea Ho", episode_id: 2) }
  let!(:dish) { Dish.create(name: "polenta", chef_id: 2, round_id: 2) }

  it 'judge can score a dish' do
    judge.score(4, "polenta")
    expect(Score.find_by(dish_id: dish.id)).to_not eq(nil) 
  end
end