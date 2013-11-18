class School
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def students
    @students
  end

  def enroll_students(name, gpa)
    students.push({name: name, gpa: gpa})
  end
  
  def find_student(name)
    student.find do |student|
      student[:name] == name
    end
  end
end