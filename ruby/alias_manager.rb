# 5.3 Challenge

# Method - Input Spy's regular name - Output first name & last name reversed

def reverse_spy_name(name)
  name = name.split(' ').reverse
  name = name.join(' ')
  name
end

# Method - Input reversed spy name - Output name with letters shifted to next letter in sequence

def next_letter(name)
  name = name.chars
  name.map! { |x| x.next }
  name = name.join('')
  name
end

puts "What is the spy's real name?"
spy_name = gets.chomp

spy_name = reverse_spy_name(spy_name)
spy_name = next_letter(spy_name)
p spy_name