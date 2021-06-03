# a Class is just a way we construct objects in a programming language (object oriented programming)
# we are "encapsulating" what something is
# everything is a block in ruby
# everything in between class Dog --> end is the "definition" of what a Dog is
# this is the Dog blueprint (essentially how to think about a class)
# define the initial properties a Dog in the constructor of a Class in any programming language
class Dog
    def initialize # <-- constructor. initialize properties. 
        @legs = 4   # <-- these are called instance properties. by default they are private.
        @ears = 2
        @tail = true
    end
    def legs # in order to make these "public" we need getter function
        @legs
    end
    def setLegs(value) # <-- if we want to change the legs, need setter function
        @legs = value
    end
end

# and we're creating new Dogs from ^this blueprint
Spot = Dog.new
Fluffy = Dog.new
Fluffy.setLegs(3) # <-- Fluffy hit by a car

puts Spot.legs
puts Fluffy.legs
