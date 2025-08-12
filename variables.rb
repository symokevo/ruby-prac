# Basic Data Types
puts 1 + 1 # addition
puts 2 - 1 # subtraction
puts 4 * 4 # Multiplication
puts 8 / 2 # Division
puts 3 ** 2 # Exponent
puts 8 % 3 # Modulus (find the remainder of a division)

puts 17 / 5 # Does not print the decimal
puts 17 / 5.0 # prints the decimal value

# Casting method for numbers
# to_f, to_i

# some useful number methods
puts 3.even?
puts 4.even?
puts 7.odd?

#==========================#
#       STRINGS
#==========================#
# Concatenation
# 1. Using the plus operator
puts "Welcome " + "to" + " the Odin project"

# 2. Using the shovel operator:
puts "Welcome " << "to" << " the Odin project"

# 3. Using the concat method
puts "Welcome ".concat("to ").concat("the Odin project")

# Substrings -> Stringception
puts "hello"[0] # the 1st
puts "hello"[0..1] # he
puts "hello"[0, 4] # hell
puts "hello"[-1] # The last char

# ESCAPE CHARACTERS

# \\  #=> Need a backslash in your string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those of you that love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark

# INTERPOLATION -> allows evaluation of a string tha contains placeholder variables.
# must use "......"
name = "Osmon"
puts "Hello, #{name}"
puts 'Hello, #{name}' # Does not work because of the single quotes

# COMMON STRING METHODS
# 1. Capitalize
puts "hello".capitalize

# 2. Include?
puts "hello".include?("lo") # true
puts "hello".include?("zz") # false

# 3. Upcase
puts "hello".upcase # HELLO

# 4. Downcase
puts "HELLO".downcase

# 5. Empty?
puts "hello".empty? # false
puts "".empty? #true

# 6. length
puts "hello".length

# 7. Reverse
puts "hello".reverse

# 8. Split
puts "hello world".split
puts "Hellow world".split("")

# 9. Strip
puts "   hello, world   ".strip # removes leading and trailing spaces

# More examples
puts "he77o".gsub("7", "l") # replaces 7 with l
puts "he77o".gsub("7", "l")
puts "hello".insert(-1, " world") # inserts " world" before the last character
puts "hello world".delete("l") # deletes all "l" characters
puts "!".prepend("hello, ", "world") # prepends "hello, " and "world" to "!"

# CONVERTING OTHER OBJECTS TO STRING
puts 5.to_s # converts number to string
puts nil.to_s # converts nil to string
puts :symbol.to_s # converts symbol to string

#==========================#
#       SYMBOLS
#==========================#

# Strings vs Symbols
# Symbols are immutable, unique, and more memory efficient than strings while strings are mutable and can be changed.
# Symbols are often used as identifiers or keys in hashes.

# Creating a symbol
my_symbol = :my_symbol

# Accessing a symbol
puts my_symbol

# Symbols vs Strings
puts "hello".object_id # Different object id every time
puts "hello".object_id # Different object id every time
puts :hello.object_id # Same object id every time
puts :hello.object_id # Same object id every time

# Common use case for symbols is as keys in hashes
my_hash = { name: "Osmon", age: 25 }
puts my_hash[:name] # Accessing value using symbol key
puts my_hash[:age]  # Accessing value using symbol key

puts "string" == "string" # true, comparing strings
puts "string".object_id == "string".object_id # false, different object ids for strings
puts :symbol == :symbol # true, comparing symbols
puts :symbol.object_id == :symbol.object_id # true, same object ids for symbols

# Symbols are often used in method arguments to represent options or flags
def example_method(option: :default)
  puts "Option is: #{option}"
end

example_method(option: :custom) # Using a symbol as an argument
example_method # Using the default symbol
