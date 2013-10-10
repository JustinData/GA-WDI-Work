class Painting < ActiveRecord::Base
  belongs_to :artist

  validates :name, :nationality, :date_of_birth, presence: true
end