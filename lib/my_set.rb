# your code here
# def first_repeated_value(array)
#     # create a Set to keep track of values we've seen
#     set = Set.new
#     # iterate over each element from the array
#     for i in 0..array.length
#       # if we've already seen a value, we've found the duplicate!
#       return array[i] if set.include?(array[i])
#       # otherwise, add the value to our set
#       set.add(array[i])
#     end
#     # return nil if we reach the end and haven't found our value
#     nil
# end
  
# first_repeated_value([1,2,3,3,4,4])
# # => 3

class MySet
    def initialize(enumerable = [])
        @hash = {}
        enumerable.each do |value|
            @hash[value] = true
        end
    end

    def include?(value)
        @hash.has_key?(value)
    end

    def add(value)
        @hash[value] = true
        self
    end

    def delete(value)
        @hash.delete(value)
        self
    end

    def size
        @hash.size
    end
    
end

