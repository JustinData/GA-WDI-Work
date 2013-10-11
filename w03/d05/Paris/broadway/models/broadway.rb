require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "Paris",
  password: "",
  database: "broadway_db"
)

class Song < ActiveRecord::Base
  belongs_to :shows

  validates :song_title, :embed_url, presence: true, uniqueness: true
end


class Show < ActiveRecord::Base
  has_many :songs

  validates :title, :year, :composer, :img_url, presence: true, uniqueness: true
end

binding.pry
