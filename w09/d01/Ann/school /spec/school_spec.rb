#School has students
#Each student has a GPA 
#The school has an average GPA 

require 'spec-helper'
require_relative '../lib/school'

  describe School do 
    describe "::new" do 
      it 'creates a new school' do 
        school = School.new 
        except(school).to_not eq nil 
      end 
    end 
  end 

