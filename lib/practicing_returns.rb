def hello(array)
  i = 0
  collection = []
  while i < array.length
    #capture value of yield in a new array
    collection << yield(array[i])
    i += 1
  end
  #return the array of yield values
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
