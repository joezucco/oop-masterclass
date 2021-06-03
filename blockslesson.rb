## RUBY BLOCKS
# Ruby blocks are a way to copy code into a variable. To save into a variable.

var1 = Proc.new{|n| puts "hello #{n}"} # <-- Proc is short for 'procedure'

# var1.call("joe")

# var1.call("bob")

def hello_world(&proc) # <-- ampersand is going to convert the block I pass in into a procedure 
    # yield if block_given? # <-- yield calls the block if you pass it a block
    5.times { proc.call } # <-- iterate over it
end

hello_world {puts "hello world"}
