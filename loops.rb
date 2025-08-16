# loop
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

# while loop: declare the condition that will break the loop outside
x = 0
while x < 10 do
  puts "x is #{x}"
  x += 1
end

# using while loops to ask questions until the desired response is reached
# while gets.chomp != "yes" do
#   puts "Are we there yet?"
# end

# until loop: runs until the condition is true
y = 0
until y >= 10 do
  puts "y is #{y}"
  y += 1
end

# until gets.chomp == "yes" do
#   puts "Do you love coding?"
# end


# Ranges
(1...5) # exclusive range: 1, 2, 3, 4
(1..5) # inclusive range: 1, 2, 3, 4, 5

# We can make ranges of letters too
('a'..'e') # inclusive range: a, b, c, d, e
('a'...'e') # exclusive range: a, b, c, d

# For loop
for i in 0..5 do
  puts "#{i} angels are coming"
end

# Time loop
5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end

# Upto and Downto loops
5.upto(10) { |num| print "#{num} " } # prints 5 6 7 8 9 10
puts "\n"
10.downto(5) { |num| print "#{num} " } # prints 10 9 8 7 6 5
