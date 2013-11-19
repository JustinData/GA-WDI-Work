class User < ActiveRecord::Base
  validates :name, presence: true 

  def initialize 
  end 
end
