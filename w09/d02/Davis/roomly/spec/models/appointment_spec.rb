require 'spec_helper'

describe Appointment do
  let(:appointment) do
    Appointment.new(user_id: 1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
  end

  it 'is valid if it has all the attributes' do
    expect(appointment).to be_valid
  end

  it 'is invalid without a user_id' do
    appointment.user_id = nil
    expect(appointment).to have(1).errors_on(:user_id)
  end
end
