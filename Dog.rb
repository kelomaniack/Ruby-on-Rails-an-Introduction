class Dog
  def to_s
    "Dog"
  end
  def bark
    "barks loudly"
  end
end
class Smalldog < Dog
  def bark
    "barks quietly"
  end
end

dog = Dog.new
small_dog = Smalldog.new
puts "#{dog}1 #{dog.bark}"
puts "#{small_dog}2 #{small_dog.bark}"