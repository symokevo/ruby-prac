# Arrays: Crates an ordered and indexed collection of elements.
# Can contain any type of object, including other arrays.

num_array = [1, 2, 3, 4, 5]
str_array = ["apple", "banana", "cherry"]

# You can also use Array.new to create an empty array or an array with a specific size
Array.new
Array.new(3) # Creates an empty array with 3 nil elements [nill, nill, nill]
Array.new(3, 4) # Creates an array with 3 elements, all set to 4 [4, 4, 4]

# Using indexes to access elements
puts num_array[0] # Outputs: 1
puts str_array[1] # Outputs: banana
puts num_array[-1] # Outputs: 5 (last element)
puts str_array[-2] # Outputs: banana (second last element)

# .first and .last methods
puts num_array.first # Outputs: 1
puts str_array.last # Outputs: cherry
puts str_array.first(2) # Outputs: ["apple", "banana"] (first two elements)

# Adding and removing elements
# Push adds an element to the end of the array ( or the << operator)
num_array.push(3, 4, 6) # num_array becomes [1, 2, 3, 4, 5, 3, 4, 6]
str_array << "date" # str_array becomes ["apple", "banana", "cherry", "date"]

# Pop removes the last element from the array
num_array.pop # Removes 6, num_array becomes [1, 2, 3, 4, 5]
str_array.pop # Removes "date", str_array becomes ["apple", "banana", "cherry"]


# shift removes the first element from the array
num_array.shift # Removes 1, num_array becomes [2, 3, 4, 5]
str_array.shift # Removes "apple", str_array becomes ["banana", "cherry"]

# unshift adds an element to the beginning of the array
num_array.unshift(0) # num_array becomes [0, 2, 3, 4, 5]
str_array.unshift("apricot") # str_array becomes ["apricot", "banana", "cherry"]

# NOTE: both pop and shift can take integer arguments to remove multiple elements
num_array.pop(2) # Removes last two elements, num_array becomes [0, 2, 3]
str_array.shift(2) # Removes first two elements, str_array becomes ["cherry"]

# Adding and Subtracting Arrays
a = [1, 2, 3]
b = [4, 5, 6]
c = a + b # Concatenates arrays, c becomes [1, 2, 3, 4, 5, 6]
a.concat(b) # Another way to concatenate, a becomes [1, 2, 3, 4, 5, 6]

d = a - b # Subtracts elements of b from a, d becomes [1, 2, 3] (if b has no common elements with a)
e = a & b # Intersection, e becomes [] (no common elements)

# Multiplying Arrays
f = a * 2 # Repeats the array, f becomes [1, 2, 3, 1, 2, 3]

# Iterating through arrays
num_array.each do |num|
  puts num
end

str_array.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end

# Using map to transform arrays
squared_numbers = num_array.map { |num| num * num } # Returns a new array with squared numbers
puts squared_numbers.inspect # Outputs: [0, 4, 9, 16, 25]

# Other methods
num_array.methods # Lists all methods available for num_array

[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

