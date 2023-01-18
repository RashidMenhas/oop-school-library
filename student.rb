require './person'

class Student < Person
  def initialize(age, name, parents_permission, classroom)
    super(age, name, parents_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
