# Vampire Tester

good_applicant = true
current_year = 2017

puts "What is your name?"
applicant_name = gets.chomp

puts "How many years old are you?"
years_old = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our cafeteria serves garlic bread. Should we order some for you? (Yes or No)"
garlic_bread = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance? (Yes or No)"
insurance = gets.chomp.downcase

# Age, Garlic Bread Test, & Insurance Test
if current_year - birth_year == years_old && (garlic_bread == "yes" || insurance == "yes")
  good_applicant = true
else 
  good_applicant = false
end

puts good_applicant