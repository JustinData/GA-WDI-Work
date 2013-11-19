require 'spec_helper'

#write 2 features, 
#1. appointments 
#cant e at the same tine for the same room and 
#2. a user is charged for a oom. 
#(Hourly rate of room * number of hours)
   #- this wil require an exrra model/table -> acct. It should hav a balance .
   #a user connot rent a room without enough money in their balance to pay for it.
describe Appointment do
  let(:appointment) do
    Appointment.new(user_id:1, room_id: 2, start: Time.now, finish: 3.hours.from_now)
  end

  it "is valid if it has all the attributes" do
    expect(appointment).to be_valid
  end

  it "is invalid without a user_id" do
    appointment.user_id = nil
    expect(appointment).to have(1).errors_on(:user_id)
  end

  it "is invalid without room_id" do
    appointment.room_id = nil
    expect(appointment).to have(1).errors_on(:room_id)
  end

  it "is invalid without start time:" do
    appointment.start = nil
    expect(appointment).to have(1).errors_on(:start)
  end

  it "is invalid without finish: time" do
    appointment.finish = nil
    expect(appointment).to have(1).errors_on(:finish)
  end

  describe "start/finish" do #this is the same as #start_before_finish
    
    context "start before finish" do
      it "is valid" do
        appointment.start = 1.year.from_now
        expect(appointment).to have(1).errors_on(:start)
      end
    end
  end
  pending "same start/end time for same room"
end
