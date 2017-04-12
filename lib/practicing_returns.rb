require 'pry'

def collect(array)
  i = 0
  x = array.length
  collect = []
  while i < x
    #binding.pry
    collect << yield array[i]
    i += 1
  end
  collect # return value of type Array of the #hello method
end

collect(["Tim", "Tom", "Jim"]) {|name| "Hi, #{name}"}
