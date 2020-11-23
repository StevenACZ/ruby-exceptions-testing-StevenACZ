# create the custom error classes here

class Person
  def initialize(name:, age:)
    # modify this method
    @name = name
    @age = age
  end
end

class PeopleCreator
  def self.create_person(name:, age:)
    # modify this method
    Person.new(name: name, age: age)
  end
end
