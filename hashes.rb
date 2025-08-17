# Introduction
# Hashes are similar to dictionaries in Python or objects in JavaScript.
# They are collections of key-value pairs, where each key is unique.
# The key difference between hashes and arrays is that hashes are not ordered by index but by keys.
# So there is no concept of an "index" in a hash.

# Creating a Hash using the hash rocket syntax
my_hash = {
  "a random word" => "rada",
  "Your math score" => 100,
  "a random array" => [1, 2, 3],
  "a random boolean" => true,
  "an empty hash" => {}
}

# Using the newer syntax (Ruby 1.9+)
anther_hash = Hash.new
hash = { 9 => "nine", 10 => "ten" }

# Accessing values in a hash
puts my_hash["a random word"] # Outputs: rada
puts my_hash["Your math score"] # Outputs: 100
puts my_hash["a random array"] # Outputs: [1, 2, 3]
puts my_hash["a random boolean"] # Outputs: true
puts my_hash["an empty hash"] # Outputs: {}

# fetch method to access values
puts my_hash.fetch("a random word") # Outputs: rada
puts my_hash.fetch("Your math score") # Outputs: 100
puts my_hash.fetch("a random array") # Outputs: [1, 2,  3]
puts my_hash.fetch("a random boolean") # Outputs: true
puts my_hash.fetch("an empty hash") # Outputs: {}

# returning a default value if the key does not exist
puts my_hash.fetch("nonexistent key", "default value") # Outputs: default value

# Adding a new key-value pair to the hash
my_hash["new key"] = "new value"
puts my_hash["new key"] # Outputs: new value

# Modifying an existing key-value pair
my_hash["Your math score"] = 95
puts my_hash["Your math score"] # Outputs: 95

# Deleting a key-value pair
my_hash.delete("a random boolean")
puts my_hash["a random boolean"] # Outputs: nil (since it has been deleted)

# Iterating over a hash
my_hash.each do |key, value|
  puts "#{key}: #{value}"
end

# Adding and changing values in a hash
shoe = {
  "summer" => "flip flops",
  "winter" => "boots",
  "spring" => "sneakers",
  "fall" => "loafers"
}

shoe["summer"] = "sandals" # Changing value for summer
shoe["autumn"] = "moccasins" # Adding a new key-value pair for autumn

# Displaying the updated hash
shoe.each do |season, type|
  puts "#{season}: #{type}"
end

# Checking if a key exists in the hash
puts shoe.key?("summer") # Outputs: true
puts shoe.key?("spring") # Outputs: true
puts shoe.key?("autumn") # Outputs: true
puts shoe.key?("winter") # Outputs: true
puts shoe.key?("fall") # Outputs: false (since we used "autumn" instead)

# Removing data
shoe.delete("autumn") # Removing the key-value pair for autumn
puts shoe.key?("autumn") # Outputs: false (since it has been deleted)

# Merging two hashes
additional_shoes = {
  "rainy" => "galoshes",
  "formal" => "oxfords"
}

merged_shoes = shoe.merge(additional_shoes)

# Displaying the merged hash
merged_shoes.each do |season, type|
  puts "#{season}: #{type}"
end

# Methods for Hashes
# 1. keys - Returns an array of all keys in the hash
puts my_hash.keys.inspect # Outputs: ["a random word", "Your math score", "a random array", "an empty hash", "new key"]

# 2. values - Returns an array of all values in the hash
puts my_hash.values.inspect # Outputs: ["rada", 95, [1, 2, 3], {}, "new value"]

# 3. has_key? - Checks if a specific key exists in the hash
puts my_hash.has_key?("Your math score") # Outputs: true
puts my_hash.has_key?("nonexistent key") # Outputs: false

# 4. has_value? - Checks if a specific value exists in the hash
puts my_hash.has_value?(100) # Outputs: false (since it was changed to 95)
puts my_hash.has_value?("rada") # Outputs: true

# 5. clear - Removes all key-value pairs from the hash
my_hash.clear
puts my_hash.inspect # Outputs: {}

# Symbols as Hash Keys
# Symbols can also be used as keys in hashes, which is a common practice in Ruby.
american_cars = {
  :ford => "Mustang",
  :chevrolet => "Camaro",
  :dodge => "Charger"
}

# Only works for symbols
puts american_cars[:ford] # Outputs: Mustang
puts american_cars[:chevrolet] # Outputs: Camaro
puts american_cars[:dodge] # Outputs: Charger

# Using strings as keys
# You can also use strings as keys, but symbols are more memory-efficient.
puts american_cars["ford"] # Outputs: nil (since "ford" is not a symbol)
puts american_cars["chevrolet"] # Outputs: nil (since "chevrolet" is not a symbol)
puts american_cars["dodge"] # Outputs: nil (since "dodge" is not a symbol)
japanese_cars = {
  honda: "Civic",
  toyota: "Corolla",
  nissan: "Altima"
}

# Conclusion
# Hashes are powerful data structures in Ruby that allow you to store and manipulate key-value pairs efficiently.
# They are widely used for various purposes, including configuration settings, data storage, and more.

# Note: This code is meant to be run in a Ruby environment.
# Ensure you have Ruby installed to execute this code successfully.
# You can run this code in an interactive Ruby shell (IRB) or save it in
