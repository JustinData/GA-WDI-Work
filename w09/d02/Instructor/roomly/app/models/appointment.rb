class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
end
