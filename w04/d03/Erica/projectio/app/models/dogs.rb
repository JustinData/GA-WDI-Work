class Dog <ActiveRecord::Base
  validates :name, :breed, :presence => true
end
