# Encrypt Method Pseudocode

# Purpose: Advance each letter of a string one letter forward and return new string
# Input a string as the argument
# Analyze each individual letter of the string, move forward one letter in the alphabet,
# and save the letter at that point in the index to the new letter.
# Combine those new letters into a new string

def encrypt(word)
  index = 0
  while index < word.length
    word[index] = word[index].next
    index += 1
  end
  return word
end

puts encrypt("abc")
puts encrypt("Michael")
puts encrypt("Jone")

# Decrypt Method Psuedocode

# Purpose: Reverse the encrypt method
# Input a string as the argument
# Analyze each individual letter of the string, move backward one letter in the alphabet,
# and save the letter at that point in the index to the new letter.
# Combine the new letters into a new string

def decrypt(word)
  index = 0
  # alphabet = "abcdefghijklmnopqrstuvwxyz"
  while index < word.length
    word.index = word.index("abcdefghijklmnopqrstuvwxyz")
    index += 1
  end
  return word
end

puts decrypt("bcd")