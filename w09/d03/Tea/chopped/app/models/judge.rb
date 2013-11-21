class Judge < ActiveRecord::Base
  belongs_to :episode
  has_many :scores

  def score(rating, dishName)
    dish = Dish.find_by(name: dishName)
    score = Score.new(score: rating, dish_id: dish.id, judge_id: self.id)
    score.save
  end
end
