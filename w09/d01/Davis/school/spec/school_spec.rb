# school has students
# each student has a gpa
# school has average gpa

require 'spec_helper'
require_relative '../lib/school'

describe School do
  # :: for class method
  describe '::new' do

    # let block defines 'variable' for use within testing
    let(:school) { School.new("Springfield Elementary") }

    it 'creates a new school' do
      # code example inside it block
      expect(school).to_not eq nil
    end

    it 'has a name' do
      expect(school.name).to eq("Springfield Elementary")
    end
  end

end