class Watchlist < ActiveRecord::Base
	validates :title, :poster, :plot, presence: true
	validates :rating, inclusion: 1..5
	validate :rating_when_seen

	private
	def rating_when_seen
		unless !rating
			if seen == false
				errors.add(:rating, "You cannot rate a movie you haven't watch.")
			end
		end
	end
end