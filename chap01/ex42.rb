#http://www.eriktrautman.com/posts/ruby-explained-classes contains great explanation of classes and objects

## Animal is-a object look at the extra credit
class Animal
end

## Dog is an animal
class Dog < Animal

  def initialize(name)
    #Dog has a name
    @name = name
  end
end

#cat is a animal
class Cat < Animal

  def initialize(name)
    #cat has a name
    @name = name
  end
end

#person is a class
class Person

  def initialize(name)
    ## person has a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## employee is a person
class Employee < Person

  def initialize(name, salary)
    ## person has a name and has a salary
    super(name)
    ## person has a salary
    @salary = salary
  end

end

## fish is a class
class Fish
end

## salmon is a fish
class Salmon < Fish
end

## hailbut is a fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## Satan is a Cat
satan = Cat.new("Satan")

## Mary is a person
mary = Person.new("Mary")

## satan is a pet of marys
mary.pet = satan

## frank is a employee earning 120000
frank = Employee.new("Frank", 120000)

## rover is a pet of franks
frank.pet = rover

## fipper is a fish
flipper = Fish.new()

## crouse is a salmon
crouse = Salmon.new()

## harry is a halibut
harry = Halibut.new()
