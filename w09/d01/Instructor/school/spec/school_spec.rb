# School has students
# Each student has a GPA
# The school has an average GPA

require 'spec_helper'
require_relative '../lib/school'

describe School do
  describe '::new' do
    it 'creates a new school' do
      school = School.new("Something")
      expect(school).to_not eq nil
    end

    it 'has a name' do
      school = School.new("Springfield Elementary")
      expect(school.name).to eq("Springfield Elementary")
    end
  end
end