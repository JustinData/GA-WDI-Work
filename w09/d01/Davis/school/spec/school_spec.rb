# school has students
# each student has a gpa
# school has average gpa

require 'spec_helper'
require_relative '../lib/school'

describe School do
  # :: for class method
  describe '::new' do
    it 'creates a new school' do
      # code example inside it block
      school = School.new("Springfield Elementary")
      expect(school).to_not eq nil
    end

    it 'has a name' do
      school = School.new("Springfield Elementary")
      expect(school.name).to eq("Springfield Elementary")
    end
  end

end