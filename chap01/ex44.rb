#creating parent class with 3 functions.
class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

#creating child class which inherits from the parent
class Child < Parent

#this overrides as is the same name as function in parent.
  def override()
    puts "CHILD override()"
  end

#no need to repeat implicit function as it has been inherited.
#alters the function depending on whether the parent class has been run.
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

#instatiating new instances of the child class (son) and parent class (dad)
#the dad will inherit the functionality of Parent
#the son will inherit the functionality of Child
dad = Parent.new()
son = Child.new()

#run the implicit function on dad and son.
#son returns even though no instance function was created
dad.implicit()
son.implicit()

#run the override function on dad and son
dad.override()
son.override()

#run the altered function on dad and son 
dad.altered()
son.altered()
