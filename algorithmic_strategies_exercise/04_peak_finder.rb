# Write a method, peak_finder(arr), that accepts an array of numbers as an arg.
# The method should return an array containing all of "peaks" of the array.
# An element is considered a "peak" if it is greater than both it's left and right neighbor.
# The first or last element of the array is considered a "peak" if it is greater than it's one neighbor.

def peak_finder(array)
    new_arry = []
    
    

        (0...array.length - 1).each do |i|
            if array[0] > array[1]
                new_arry << array[0]
            
            elsif array[-1] > array[-2]
                new_arry << array[-1]
           
            elsif (array[i] > array[i + 1] && array[i] > array[i - 1])
                new_arry << array[i]
                
                
            end
        end
    

    new_arry

end


p peak_finder([1, 3, 5, 4])         # => [5]
p peak_finder([4, 2, 3, 6, 10])     # => [4, 10]
p peak_finder([4, 2, 11, 6, 10])    # => [4, 11, 10]
p peak_finder([1, 3])               # => [3]
p peak_finder([3, 1])               # => [3]
