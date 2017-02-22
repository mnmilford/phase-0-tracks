# Interior Designer Client Info

# Create an empty hash {} to store client details
# Ask the designer a few questions to collect client info
# Questions will presented one by one to collect client's name, age, decor theme, number of rooms,
# and number of bathrooms
# Store each response as a new key/value pair and add to the original hash
# Once all questions have been answered, print out the client info and ask to confirm


# Create blank hash to store client info
client_info = {}

# Prompt user to answer a series of questions
puts "What is the client's name?"
client_info[:client_name] = gets.chomp

puts "What is the client's age?"
client_info[:client_age] = gets.chomp.to_i

puts "What is the client's chosen decor theme?"
client_info[:decor_theme] = gets.chomp

puts "How many rooms are in the house?"
client_info[:number_of_rooms] = gets.chomp.to_i

puts "How many bathrooms are in the house?"
client_info[:number_of_bathrooms] = gets.chomp.to_i

puts "Is the client's budget under $1,000? (Yes or No)"
  response = gets.chomp.downcase
  if response == "yes"
    client_info[:low_budget] = true
  else
    client_info[:low_budget] = false
  end