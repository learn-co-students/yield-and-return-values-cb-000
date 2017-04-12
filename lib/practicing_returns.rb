require 'pry'

def hello(array)
  i = 0
  names = []
  while i < array.length
    names << yield(array[i])
    i += 1
  end
  names
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name|  "Hi, #{name}" }
