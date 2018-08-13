require 'pry'

def hello(array)
  i = 0
  collection = []
  while n < array.length
    collection << yield(array[n])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
