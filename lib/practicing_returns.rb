require 'pry'

def hello1(array)
  i = 0
  while i < array.length
    # binding.pry
    yield(array[i])
    i += 1
  end
end

# binding.pry #=> returns nil: hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
#  iterate over an array and yielding each member of the array in turn to a block
hello1(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

#=> Hi, Tim
#=> Hi, Tom
#=> Hi, Jim

# calling yield(some_argument) will give the return value of the executed block with that argument, and those return values can be captured

def hello(array)
  i = 0
  collection = [] # set a (new) empty array
  while i < array.length
    collection << yield(array[i]) # push the return value into new array
    i += 1
  end
  collection # return new array after while loop has completed
end
