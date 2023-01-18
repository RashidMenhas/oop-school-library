require './person'

class Teacher < person
  def initialize(specialization, age, name, parents_permission)
    super(age, name, parents_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
