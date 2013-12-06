require 'spec_helper'

describe Watchlist do
	subject(:watchlist) { Watchlist.new(title: "Movie", poster: "URL", plot: "cool") }

	describe "validations" do
		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:poster) }
		it { should validate_presence_of(:plot) }
		it { should ensure_inclusion_of(:rating).in_range(1..5) }
	end

	context "seen is false upon instantiation" do
		it "should be false" do
			watchlist.save
			expect(watchlist.seen).to be_false
		end
	end

	context "rating on movie without being seen" do
		before do
			watchlist.save
			watchlist.rating = 5
		end

		it "is not valid" do
			# watchlist.save
			expect(watchlist).to have(1).errors_on(:rating)
		end
	end
end