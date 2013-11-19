class Appointment < ActiveRecord::Base
  validates :user_id, presence: true
end
