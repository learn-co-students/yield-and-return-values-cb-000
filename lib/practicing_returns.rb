require 'pry'

def hello(array)
  i, collection = 0, []
  
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end


final = hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
puts final.inspect