class Person
  def initialize(age)
    self.age = age
    puts my_age
  end

  private
  def my_age
    @age
  end

  def age=(age)
    @age = age
  end
end

Person.new(25)