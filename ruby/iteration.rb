# Release 0 - Write your own method that takes a block

def status
  puts "Hey!"
  yield
end

# Before running anything in the block
status {}

# After adding some block instructions
status { puts "Here's an extra message!" }
status { puts "Here's another message with a different block"}


# Release 1 - Use .each, .map, and .map!

# Create an array
months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

# Create a hash
days_in_month = {
  :January => 31,
  :February => 28,
  :March => 31,
  :April => 30,
  :May => 31,
  :June => 30,
  :July => 31,
  :August => 31,
  :September => 30,
  :October => 31,
  :November => 30,
  :December => 31
}

# Iterating through the "months" array
puts "This is the original 'months' array."
p months

months.each do |month|
  puts "#{month} is awesome!"
end

months.map! do |string|
  "#{string} is my favorite month!"
end

puts "This is the 'months' array after altering the date with the .map method."
p months


# Iterating through the "days_in_month" hash
puts "This is the original 'days_in_month' hash."
p days_in_month

puts "This is the 'days_in_month' hash using the .each method."
days_in_month.each do |month, days_in_month|
  puts "There are #{days_in_month} days in #{month}!"
end



# Release 2: Use the Documentation

# Question 1

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

array.delete_if do |x|
  x < 5
end

p array

hash.delete_if do |key,value|
  value == "five"
end

p hash


# Question 2

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

array.keep_if do |x|
  x < 5
end

p array

hash.keep_if do |key,value|
  value == "five"
end

p hash


# Question 3

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

filter_array = array.drop_while do |x|
  x < 4
end

p array

p filter_array

filter_hash = hash.select do |key,value|
  value == "five"
end

p hash

p filter_hash


# Question 4

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five"
}

filter_array = array.take_while do |x|
  x < 4
end

p array

p filter_array

filter_hash = hash.reject do |key,value|
  value == "five"
end

p hash

p filter_hash