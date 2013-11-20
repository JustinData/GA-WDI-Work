class Chef < ActiveRecord::Base
  belongs_to :episode
  belongs_to :round
  has_many :dishes
end
