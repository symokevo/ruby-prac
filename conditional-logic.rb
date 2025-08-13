room_tidy = true
if room_tidy == true
  "I can now play the game."
end

# Truthy and falsy in Ruby
# Nil and False are falsy
# Everything else is truthy

## Basic Conditional Statements using (if)

statement_to_be_evaluated = false
if statement_to_be_evaluated == true
  # Do something
end

if 1 < 2
  puts "Hot diggity, 1 is less than 2!"
end

# or simply:
puts "Hot diggity, 1 is less than 2!" if 1 < 2

# Else and elsif
attack_by_land = false
attack_by_air = true

if attack_by_land == true
  puts "Release the Goat"
elsif attack_by_air == true
  puts "Release the Dragon"
else
  puts "Release the shark"
end

# Boolean Logic
# uses ==, !=, <, >, <=, >=
# and, or, not

puts 5 == 5 # Checks if 5 is equal to 5
puts 5 == 6

# != not equal
5!= 6 # true

# greater than(>) and less than(<)
puts 7 > 5 # true
puts 5 < 7 # true

# greater than or equal to (>=) and less than or equal to (<=)
puts 5 >= 5 # true
puts 5 <= 6 # true

# and, or, not
puts true and false # false
puts true or false # true
puts not true # false

# eql? checks if two objects are equal in value and type
puts 5.eql?(5) # true
puts 5.eql?(5.0) # false (different types)

# equal? checks if two objects are equal in value ie. if both the values are the exact same object in memory
# This is a stricter check than eql?
a = 5
b = 5
puts a.equal?(b) # true (same object in memory)

c = "hello"
d = "hello"
puts c.equal?(d) # false (different objects in memory)

puts 5.equal?(5) # true (same object)
puts 5.equal?(5.0) # false (different objects)

# Using if-else statements
if room_tidy
  puts "I can now play the game."
else
  puts "I need to tidy up first."
end

# Using if-else with a method
def check_room_tidy(room_tidy)
  if room_tidy
    "I can now play the game."
  else
    "I need to tidy up first."
  end
end

puts check_room_tidy(room_tidy)

# Conditional Logic with Methods
def can_play_game?(room_tidy)
  if room_tidy == true
    "I can now play the game."
  else
    "I need to tidy up first."
  end
end

puts can_play_game?(room_tidy)

# Using ternary operator for simple conditionals
puts room_tidy ? "I can now play the game." : "I need to tidy up first."
# The ternary operator is a shorthand for if-else statements
# Syntax: condition ? true_case : false_case

# Using unless for negative conditions
unless room_tidy
  puts "I need to tidy up first."
else
  puts "I can now play the game."
end

# Using case statements for multiple conditions
case room_tidy
when true
  puts "I can now play the game."
when false
  puts "I need to tidy up first."
else
  puts "Unknown state."
end

# Spaceship operator for comparisons ( Mostly used in sorting functions )
# The spaceship operator (<=>) returns -1, 0, or 1
# -1 if the left is less than the right, 0 if equal, and 1 if greater
puts 5 <=> 6 # -1 (5 is less than 6)
puts 5 <=> 5 # 0 (5 is equal to 5)
puts 6 <=> 5 # 1 (6 is greater than 5)

# Using the spaceship operator in sorting
array = [3, 1, 2]
sorted_array = array.sort { |a, b| a <=> b }
puts sorted_array.inspect # [1, 2, 3]

# Logical operators in conditionals
# and (&&), or (||), not (!)

# && represents logical AND. it returns true if both operands are true.
puts true && true # true
puts true && false # false

if 1 < 2 && 5 < 6
  puts "Party at Osmon's!"
end
# or
if 1 < 2 and 5 < 6
  puts "Party at Osmon's!"
end

# || represents logical OR. it returns true if at least one operand is true.
puts true || false # true
puts false || false # false

if 10 < 2 || 5 < 6
  puts "Party at Osmon's!"
end
# or
if 10 < 2 or 5 < 6
  puts "Party at Osmon's!"
end


# && and || evaluate expressions from left to right and short-circuit.
# If the first operand of && is false, it won't evaluate the second operand.
# If the first operand of || is true, it won't evaluate the second operand.
# ----------------

# Short-circuiting example
def expensive_operation
  puts "Expensive operation executed!"
  true
end

# ! represents logical NOT. it negates the truth value.
puts !true # false
puts !false # true

# Combining logical operators
if room_tidy && (1 < 2)
  puts "Room is tidy and 1 is less than 2."
else
  puts "Either room is not tidy or 1 is not less than 2."
end

# Case Statements
grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother"
  else "'YOU SHALL NOT PASS! -Gandalf"
end

puts did_i_pass

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end
