# a Class is just a way we construct objects in a programming language (object oriented programming)
# we are "encapsulating" what something is
# everything is a block in ruby
# everything in between class Dog --> end is the "definition" of what a Dog is
# this is the Dog blueprint
class Dog

end

# and we're creating new Dogs from ^this blueprint
Spot = Dog.new
Fluffy = Dog.new

puts Spot
puts Fluffy