class Chef < ActiveRecord::Base
  belongs_to :episode
  has_and_belongs_to_many :rounds
  has_many :dishes

  def cook(name, round_id)
    food = Dish.new(name: name, chef_id: self.id, round_id: round_id)
    food.save
  end
end
