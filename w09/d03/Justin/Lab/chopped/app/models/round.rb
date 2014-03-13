class Round < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :episode
end