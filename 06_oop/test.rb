# a Class is just a way we construct objects in a programming language (object oriented programming)
# we are "encapsulating" what something is
# everything is a block in ruby
# everything in between class Dog --> end is the "definition" of what a Dog is
# this is the Dog blueprint (essentially how to think about a class)
# define the initial properties a Dog in the constructor of a Class in any programming language
# every class is essentially a "factory" or "factory pattern"
class Dog
    @@totalDogs = 0 # <-- class variables



    def initialize(name) # <-- constructor. initialize properties. 
        @name = name
        @legs = 4   # <-- these are called instance properties. by default they are private.
        @ears = 2
        @tail = true

        @@totalDogs += 1 # <-- class variable
    end

    def Dog.total # <-- define class method
        @@totalDogs
    end

    def legs # in order to make these "public" we need getter function
        @legs
    end

    def setLegs(value) # <-- if we want to change the legs, need setter function
        @legs = value
    end
    
    def Dog.stuff(myarg) # <-- a class function
        p myarg
    end 

    

    def name # <-- getter for name
        @name
    end



    

end

class SmallDog < Dog # inheritance. SmallDog is an extension of Dog
    stuff :athing # <-- a symbol. passing this symbol into the function of stuff
end

# and we're creating new Dogs from ^this blueprint
Spot = SmallDog.new("Spot")
Fluffy = Dog.new("Fluffy")
# Fluffy.setLegs(3) # <-- Fluffy hit by a car

# puts Spot.legs
# puts Fluffy.legs

puts Spot.name
puts Fluffy.name

p Dog.total

