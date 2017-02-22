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

p client_info