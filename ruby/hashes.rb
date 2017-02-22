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
client_info[:name] = gets.chomp

puts "What is the client's age?"
client_info[:age] = gets.chomp.to_i

puts "What is the client's chosen decor theme?"
client_info[:decor] = gets.chomp

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


puts "Below here is the client info you entered."
puts client_info
puts "Type the key of any value you would like to update. Or type 'none'."
change_key = gets.chomp.to_sym
puts "What would you like to change that value to?"
if change_key == :client_age || change_key == :number_of_rooms || change_key == :number_of_bathrooms
  new_value = gets.chomp.to_i
else
  new_value = gets.chomp
end
client_info[change_key] = new_value
puts "Okay, here is the final client info."
puts client_info