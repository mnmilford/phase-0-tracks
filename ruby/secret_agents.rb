# Encrypt Method Pseudocode

# Purpose: Advance each letter of a string one letter forward and return new string
# Input a string as the argument
# Analyze each individual letter of the string, move forward one letter in the alphabet,
# and save the letter at that point in the index to the new letter.
# Combine those new letters into a new string

puts "What is the password you would like to encrypt/decrypt?"
password = gets.chomp

puts "Would you like to encrypt or decrypt?"
encrypt_decrypt = gets.chomp

def encrypt(word)
  index = 0
  while index < word.length
    word[index] = word[index].next
    index += 1
  end
  return word
end

# Decrypt Method Psuedocode

# Purpose: Reverse the encrypt method
# Input a string as the argument
# Analyze each individual letter of the string, move backward one letter in the alphabet,
# and save the letter at that point in the index to the new letter.
# Combine the new letters into a new string

def decrypt(word)
  index = 0
  while index < word.length
    alphabet =("a".."z").to_a
    index = alphabet.index()
    word.index = word.index("abcdefghijklmnopqrstuvwxyz")
    index += 1
  end
  return word
end

if encrypt_decrypt == "encrypt"
  encrypted_password = encrypt(password)
  puts "Your encrypted password is #{encrypted_password}."
else encrypt_decrypt == "decrypt"
  decrypted_password = decrypt(password)
  puts "Your decrypted password is #{decrypted_password}."
end