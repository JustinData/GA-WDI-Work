class Song < ActiveRecord::Base
  validates :song_title, :embed_url, :presence => true

  belongs_to :show
end