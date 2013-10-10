class Artist < ActiveRecord::Base
  has_many :paintings

  validates :title, :year, :image_url, presence: true
end