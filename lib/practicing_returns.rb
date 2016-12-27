require 'pry'

def hello(array)
  i = 0
  newArray = []
  while i < array.length
    newArray << yield(array[i])
    i += 1
  end
  newArray
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
