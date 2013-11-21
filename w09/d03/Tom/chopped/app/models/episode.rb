class Episode < ActiveRecord::Base
 validates :name, presence: true
end