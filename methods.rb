# Introduction
# This file contains methods that are used to handle various operations
# related to the application. Each method is designed to perform a specific
# task, such as processing data, managing user input, or interacting with
# external services.

# Methods help you achieve the DRY (Don't Repeat Yourself) principle,
# allowing you to reuse code across different parts of your application.

# Because everything in Ruby is an object, Ruby only has methods not functions.

# Ruby's built-in methods
# #upto -> octothorpes

# Example
puts "Something".reverse # => "gnihtemoS"

# Creating a method
def your_name
  puts "My name is Ruby."
end

puts your_name # => "My name is Ruby."

# Method Names
# use snake_case for method names and start with small letters.
# Avoid using reserved words or special characters in method names.

# Method with parameters
def greet(name)
  puts "Hello, #{name}!"
end

greet("Alice") # => "Hello, Alice!"

# Method with default parameters
def greet_with_default(name = "Guest")
  puts "Hello, #{name}!"
end

greet_with_default # => "Hello, Guest!"
greet_with_default("Bob") # => "Hello, Bob!"

# Method returning a value
def add(a, b)
  a + b
end

result = add(5, 3)
puts result # => 8

# Method with variable number of arguments
def sum(*numbers)
  numbers.reduce(0, :+)
end

puts sum(1, 2, 3) # => 6
puts sum(10, 20, 30, 40) # => 100

# Ruby offers implicit return, meaning the last evaluated expression is returned.
# Ruby methods stop at return statements, so you can use them to exit early.
def even_odd(number)
  if number % 2 == 0
    "This number is even."
  else
    "This number is odd."
  end
end

puts even_odd(4) # => "This number is even."
puts even_odd(5) # => "This number is odd."


def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

# Square a number
def puts_squared(number)
  puts number * number
end
puts_squared(4) # => 16

def return_squared(number)
  number * number
end
puts return_squared(4) # => 16

x = return_squared(20) #=> 400
y = 100
sum = x + y #=> 500

puts "The sum of #{x} and #{y} is #{sum}."
#=> The sum of 400 and 100 is 500.

# Chaining methods
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

# Predicate methods
# Predicate methods are methods that return a boolean value (true or false).

puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true
puts "Hello".empty?  #=> false

# Bang methods
whisper = "HELLO EVERYBODY"
small_whisper = whisper.downcase

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
puts small_whisper #=> "hello everybody"
puts whisper.downcase! #=> "hello everybody"
