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
  upcase_vowels = vowels.map {|i| i.upcase}
  consanants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", 
        "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  upcase_consanants = consanants.map {|i| i.upcase}
  
  name = name.chars

  name.map! do |letter|
    if vowels.include?(letter)
      letter = vowels[vowels.index(letter).next]

    elsif upcase_vowels.include?(letter)
      letter = upcase_vowels[upcase_vowels.index(letter).next]

    elsif consanants.include?(letter)
      letter = consanants[consanants.index(letter).next]

    elsif upcase_consanants.include?(letter)
      letter = upcase_consanants[upcase_consanants.index(letter).next]

    else
      letter = " "

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