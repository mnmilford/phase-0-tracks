# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # separate string into individual words
  # store individual words in a hash as keys
  # set default quantity as 1
  # print the list to the console [can you use one of your other methods here?] (use method to print list)
# output: hash that stores items with default quantity 

def create_list(string_of_items)
  list_arr = string_of_items.split(" ")

  list = {}

  list_arr.each do |item|
    list[item] = 1
  end
  return list
end

list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # IF quantity is specified, include item and quantity in list
  # ELSE include item name and default quantity in list
# output: hash that stores items (including new/added items)

def add_item(list, item_name, quantity=1)
  list[item_name] = quantity
  return list
end

puts add_item(list, "bananas")


# Method to remove an item from the list
# input: list, item name
# steps:
  # Look for the item within the list
  # IF the item is found, delete it from the list
  # ELSE display an error if the item isn't present
# output: hash with specified item removed

def remove_item(list, item_name)
  if list[item_name]
    list.delete(item_name)
  else
    puts "invalid input; item not on list."
  end
  return list
end

# puts remove_item(list, "carrots")

# puts remove_item(list, "broccoli")


# Method to update the quantity of an item
# input: list, item name, new quantity 
# steps: 
   # Look for the item within the list
  # IF the item is found, re-assign value to the updated quantity
  # ELSE display an error if the item isn't present
# output: hash with specified item updated

def update_quantity(list, item_name, quantity)
  if list[item_name]
    list[item_name] = quantity
  else
    puts "invalid input; item not on list."
  end
  return list
end

puts update_quantity(list, "carrots", 2)

puts update_quantity(list, "broccoli", 2)


# Method to print a list and make it look pretty
# input: list
# steps: 
  # print a header for the list
  # iterate through the list, printing each item and quantity in a readable way
  # print ------ to show the end of the list
# output: no return value; prints list in a readable format.

def print_list(list)
  puts "Grocery List:"
  list.each do |item, quantity|
    puts " - #{quantity}: #{item}"
  end
  puts "------------"
end

print_list(list)


# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?
# I learned that doing any sort of pseudocode will dramatically speed up the actual coding process.
# If anything, it allows you to gather your thoughts and decide on the needed
# inputs & expected outputs.

# What are the tradeoffs of using arrays and hashes for this challenge?
# I strongly believe that using a hash is the proper way to complete this challenge.
# It would be possible to save the information as item + quantity as each element in an array,
# but that would make it more complicated when trying to update/delete an array item.
# An array would require us to code in ways to access items with their index value.

# What does a method return?
# A method returns whatever is the final evaluated expression. Because of this, we
# typically avoid using print statements within the method itself. This allows the method to
# just do the intended tasks and then we can decide what to do with the return value later.

# What kind of things can you pass into methods as arguments?
# We can pass in strings, integers, floats, other methods, variables, etc.
# As long as the method is designed to properly use the arguments it will work just fine.
# We also learned it's possible to set a default value for one of the parameters 

# How can you pass information between methods?
# As mentioned in the previous question, you can include a method as an argument for another method.
# As a more explicit example, you could save the return value of a method to a variable and then use
# that variable as an argument of a different method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The biggest concept that was solidified was really just pseudocoding. I've struggled with it on previous
# challenges, so it was very helpful to see practice the input, steps, and output for each method.
# I understand the concepts of DRY and refactoring for the most part, but I know that's an area
# that I need to focus on since I'm still at the point of just making sure the code works first.


