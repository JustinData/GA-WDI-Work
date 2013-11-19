class Appointment < ActiveRecord::Base
  validates :user_id, :room_id, :start, :finish, presence: true
  validate :start_before_finish #if: Proc.new { |user| user.finish? }

  def start_before_finish
    # IE stop running this method - don't go any further!!!
    return nil unless finish.present? && start.present?

    if self.finish < self.start
      errors.add(:start, "Can't start after finish!")
    end
  end
end
