class UnpronounceableName < StandardError
  def initialize(message = "This name is unpronounceable")
    super(message)
  end
end

class InvalidAge < StandardError
  def initialize(message = "This age is not possible")
    super(message)
  end
end

class Person
  attr_reader :name, :age

  def initialize(name: "", age: nil)
    raise UnpronounceableName if has_4_non_vowel_in_a_row?(name)
    raise InvalidAge unless age_between_0_and_150?(age)

    @name = name
    @age = age
  end

  def has_4_non_vowel_in_a_row?(text)
    count = 0
    text.each_char do |x|
      return true if count > 3

      x.match(/[^aeiou]/) ? count += 1 : count = 0
    end
    false
  end

  def age_between_0_and_150?(age)
    age.positive? && age <= 150
  end
end

class PeopleCreator
  def self.create_person(name:, age:)
    Person.new(name: name, age: age)
  rescue UnpronounceableName => e
    e.message
  rescue InvalidAge => e
    e.message
  end
end

data = { name: "Diego", age: 300 }
pepe = PeopleCreator.create_person(**data)
puts pepe
