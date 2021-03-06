require "pry"
class School

  def initialize(name)
    @name = name
    @roster =  {}
  end

  def roster
    @roster
  end


  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}
    @roster.each{|grade, students| new_hash[grade] = students.sort}
    new_hash
  end


end
