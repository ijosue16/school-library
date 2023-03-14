class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission
  end
end
