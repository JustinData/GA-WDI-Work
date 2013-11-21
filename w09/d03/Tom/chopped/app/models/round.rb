class Round < ActiveRecord::Base
 has_many :rounds
 validates :name, :episode_id, presence: true
end