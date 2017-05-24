require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection.push(yield(array[i]))
    i += 1
  end
  return collection
end

returned_array = hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
returned_array.each { |element| puts element }
