# 5.3 Challenge

puts "What is the spy's real name?"
spy_real_name = gets.chomp

# Method - Input Spy's regular name - Output first name & last name reversed

def reverse_spy_name(name)
  name = name.split(' ').reverse
  name = name.join(' ')
  name
end

p reverse_spy_name(spy_real_name)