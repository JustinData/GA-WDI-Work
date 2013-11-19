class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence:, uniqueness: true



end
