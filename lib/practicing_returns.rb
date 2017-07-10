require 'pry'

def hello(array)
  i = 0
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
end



