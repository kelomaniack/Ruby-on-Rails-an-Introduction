class Person
  #have a first_name and last_name attribute with public accessors
  #attr_accessor 

  #have a class attribute called `people` that holds an array of objects
  @@people = []

  #have an `initialize` method to initialize each instance
  def initialize (first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@people << self
  end
  def first_name
    @first_name
  end
  def first_name=(first_name)
    @first_name = first_name
  end
  def last_name
    @last_name
  end
  def last_name=(last_name)
    @last_name = last_name
  end

  def self.search(last_name)
    #accept a `last_name` parameter
    #search the `people` class attribute for instances with the same `last_name`
    #return a collection of matching instances
    @@people.select{ |person| person.last_name == last_name}
  end

  #have a `to_s` method to return a formatted string of the person's name
  def to_s
    "#{first_name} #{last_name}"
    #return a formatted string as `first_name(space)last_name`
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
