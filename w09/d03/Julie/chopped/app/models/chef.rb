class Chef < ActiveRecord::Base
  validates :name, presence: true
  has_many :dishes

  def make_dish(name, chef_id) 
     Dish.create(name: name, chef_id: chef_id)
  end
end

