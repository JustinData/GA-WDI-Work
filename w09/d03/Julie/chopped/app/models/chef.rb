class Chef < ActiveRecord::Base
  validates :name, presence: true
  has_many :dishes

  def make_dish(name) 
     Dish.create(name: name, chef: self)
  end
end

