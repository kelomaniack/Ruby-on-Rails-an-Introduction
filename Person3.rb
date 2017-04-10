class Person
  attr_reader :age
  attr_accessor :name

  def initialize (name, ageVar)
    @name = name
    self.age = ageVar
    puts age
  end
  def age= (new_age)
    @age = new_age unless new_age > 120
  end
end

person1 = Person.new("Kim", 13)
puts "My age is #{person1.age}"
person1.age = 120
puts person1.age