class Chef < ActiveRecord::Base
  belongs_to :episode
  has_and_belongs_to_many :rounds
  has_many :dishes
end
