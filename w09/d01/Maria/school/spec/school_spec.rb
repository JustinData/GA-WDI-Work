#school has students
#each student has a gpa
# the school has an average gpa

require'spec_helper'
require_relative '../lib/school'

describe "School" do
  describe '::new' do
    let (:school){ School.new("Springfield Elementary")}
    it "creates a new school" do
      expect(school).to_not eq nil
    end

    it 'has a name' do
      expect(school.name).to eq("Springfield Elementary")
    end

    it 'has no students' do
      expect(school.students.count).to eq (1)
    end
  end

  describe '#enroll_student' do
    it "adds a student to the school" do
      school.enroll_student("Bart Simpson", 2.5)
      expect(school.students.count).to eq(1)
    end
  end

  describe '#find_student' do
    it 'finds the student' do
      school.enroll_student("Bart Simpson", 2.5)
      bart = school.find_student("Bart Simpson")
      expect(bart.to eq({name: "Bart Simpson", gpa: 2.5}))
    end

    it "doesn't find non existing students" do
      expect(school.find_student("Shmee Johnson")). to eq(nil)
    end
  end
end