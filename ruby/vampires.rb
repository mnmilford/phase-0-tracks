# Vampire Tester

applicant_status = nil
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

# Test Level 1
if current_year - birth_year == years_old && (garlic_bread == "yes" || insurance == "yes")
  applicant_status = "Probably not a vampire."
end

# Test Level 2
if current_year - birth_year != years_old && (garlic_bread == "no" || insurance == "no")
  applicant_status = "Probably a vampire."
end

# Test Level 3
if current_year - birth_year != years_old && garlic_bread == "no" && insurance == "no"
  applicant_status = "Almost certainly a vampire."
end

# Test Level 4
if applicant_name == "Drake Cula" || applicant_name == "Tu Fang"
  applicant_status = "Definitely a vampire."
end



puts applicant_status