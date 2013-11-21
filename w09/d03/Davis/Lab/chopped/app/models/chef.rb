class Chef < ActiveRecord::Base
  has_many :dishes

  def make_dish(dish_name)
    Dish.create(name: dish_name, chef_id: self.id)
  end
end