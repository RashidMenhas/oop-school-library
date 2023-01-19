require './person'

attr_reader :classroom

class Student < Person
  def initialize(age, name, parents_permission, classroom)
    super(age, name, parents_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
