class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :friendship
end