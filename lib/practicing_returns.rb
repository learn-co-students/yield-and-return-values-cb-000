require 'pry'

# my_map - returns an array of results processed by the block
def hello(array)
	i = 0
	collection = []
	while i < array.length
		collection << yield(array[i])
		i += 1
	end
	collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
result = hello([1,2,3,4,5,6]) {|val| val * 2}
puts result.inspect
