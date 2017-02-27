# 5.3 Challenge - Pseudocode

# Ask user to enter a spy's name
# Store the name as a variable
# Separate the name into strings based on the space between first and last name
# Reverse the separate strings and then join them back together
# Now you should have a new string with the first and last name switched
# Take this reversed string and break it into a list of the letters
# Run each letter through a series of tests to determine if the letter is
# a consanant or a vowel
# Change the value of that letter to the next letter in the corresponding list (vowels or consanants)
# Finally, join all those letters back together and save it as the name again

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
  
  # The first four tests are to take care of "edge cases"
    if letter == vowels.last
      letter = vowels.first

    elsif letter == upcase_vowels.last
      letter = upcase_vowels.first

    elsif letter == consanants.last
      letter = consanants.first

    elsif letter == upcase_consanants.last
      letter = upcase_consanants.first

    elsif vowels.include?(letter)
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

spy_name = ""
spy_aliases = {}
spy_number = 0

until spy_name == "quit"
  puts "What is the spy's real name? You can type \"quit\" to exit the alias manager tool."
  real_name = gets.chomp
  spy_name = real_name
  break if spy_name == "quit"

  spy_name = reverse_spy_name(spy_name)
  spy_name = next_letter(spy_name)
  puts "The spy's new alias is: #{spy_name}."
  spy_aliases.store(real_name, spy_name)
  spy_number += 1
end

spy_aliases.each do |real_name, spy_name|
  puts "#{real_name} goes by the alias #{spy_name}."
end