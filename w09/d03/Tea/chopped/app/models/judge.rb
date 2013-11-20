class Judge < ActiveRecord::Base
  belongs_to :episode
  has_many :scores
end
