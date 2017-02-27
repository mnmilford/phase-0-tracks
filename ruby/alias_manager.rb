# 5.3 Challenge


# Method - Input Spy's regular name - Output first name & last name reversed

def reverse_spy_name(name)
  name = name.split(' ').reverse
  name = name.join(' ')
  name
end

# Method - Input reversed spy name - Output name with letters shifted to next letter in sequence

def next_letter(name)
  vowels = ["a","e","i","o","u"]
  consanants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", 
        "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  name = name.downcase
  name = name.chars
  name.map! do |x|
    if vowels.include?(x)
      x = vowels[vowels.index(x).next]
    elsif consanants.include?(x)
      x = consanants[consanants.index(x).next]
    else
      x = " "
    end
  end
  name = name.join('')
  name
end



# puts "What is the spy's real name?"
# spy_name = gets.chomp

spy_name = "Felicia Torres"

spy_name = reverse_spy_name(spy_name)
spy_name = next_letter(spy_name)
p spy_name