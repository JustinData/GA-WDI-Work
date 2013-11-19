class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true

  # this will only run if the value of the proc returns true
  # a Proc is like an anonymous block
  validate :start_before_finish, if: Proc.new {|user| user.finish?} 
  
  def start_before_finish
    return unless finish.present? && start.present?
    if self.finish < self.start
      errors.add(:start, "Can't finish before you start, HUMAN???!!!!")
    end
  end
end
