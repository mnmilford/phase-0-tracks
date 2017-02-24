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


# Release 1

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

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

p months

months.each do |months|
  puts "#{months} is awesome!"
end

p days_in_month

days_in_month.each do |months, days_in_month|
  puts "There are #{days_in_month} days in #{months}!"
end

months.map! do |string|
  "#{string} is my favorite month!"
end

p months


# Release 2

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

hash.delete_if do |x,y|
  y == "five"
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

hash.keep_if do |x,y|
  y == "five"
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

filter_hash = hash.select do |x,y|
  y == "five"
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

filter_hash = hash.reject do |x,y|
  y == "five"
end

p hash

p filter_hash