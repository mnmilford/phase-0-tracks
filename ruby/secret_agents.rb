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
    if word[index] == "z"
      word[index] = "a"
    else
      word[index] = word[index].next
    end
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

def reverse_letter(letter)
  alphabet = ("a".."z").to_a
  index = alphabet.index(letter) 
  alphabet[index-1]
end

def decrypt(word)
  index = 0
  while index < word.length
    word[index] = reverse_letter(word[index])
    index += 1
  end
  return word
end

# Test Your Program
# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")
# puts decrypt(encrypt("swordfish"))

if encrypt_decrypt == "encrypt"
  encrypted_password = encrypt(password)
  puts "Your encrypted password is #{encrypted_password}."
else encrypt_decrypt == "decrypt"
  decrypted_password = decrypt(password)
  puts "Your decrypted password is #{decrypted_password}."
end