require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    # yield return value is result of block that is passed in
    collection << yield(array[i])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
