class Judge < ActiveRecord::Base
  def rate_food(chef_name, dish_name, score)
    chef = Chef.find_by(name: chef_name)
    dish = chef.dishes.find_by(name: dish_name)

    dish.score = score
    dish.save
  end
end