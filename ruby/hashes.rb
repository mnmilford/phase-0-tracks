# Interior Designer Client Info

# Create an empty hash {} to store client details
# Ask the designer a few questions to collect client info
# Questions will presented one by one to collect client's name, age, decor theme, number of rooms,
# and number of bathrooms
# Store each response as a new key/value pair and add to the original hash
# Once all questions have been answered, print out the client info and ask to confirm


# Create blank hash to store client info
client_info = {}

# Prompt user with a series of questions collect client info
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

# Print out basic report of client info
puts "Below here is the client info you entered:"
puts "name: #{client_info[:name]}"
puts "age: #{client_info[:age]}"
puts "decor: #{client_info[:decor]}"
puts "number_of_rooms: #{client_info[:number_of_rooms]}"
puts "number_of_bathrooms: #{client_info[:number_of_bathrooms]}"
puts "low_budget: #{client_info[:low_budget]}"

# Prompt user to enter a key to change the corresponding value - or 'none' to skip
puts "Type the key of any value you would like to update, or type \"none\" to skip."
change_key = gets.chomp.to_sym
if change_key != :none
  puts "What is the new value for #{change_key}?"
	if change_key == :age || change_key == :number_of_rooms || change_key == :number_of_bathrooms
  	client_info[change_key] = gets.chomp.to_i
	elsif change_key == :low_budget
		puts "Is the client's budget under $1,000? (Yes or No)"
			response = gets.chomp.downcase
			if response == "yes"
  			client_info[:low_budget] = true
			else
  			client_info[:low_budget] = false
			end
	else
  	client_info[change_key] = gets.chomp
	end
end

# Print client info report with final info
puts "Okay, here is the final client info:"
puts client_info