# Vampire Tester

applicant_status = nil
current_year = 2017

puts "How many employees are we processing today?"
number_of_applicants = gets.chomp.to_i

while number_of_applicants > 0

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

  if current_year - birth_year == years_old
    correct_year = true
  else
    correct_year = false
  end

  if correct_year && (garlic_bread == "yes" || insurance == "yes")
    applicant_status = "Probably not a vampire."
  elsif !correct_year && garlic_bread == "no" || !correct_year && insurance == "no"
    applicant_status = "Probably a vampire."
  elsif !correct_year && garlic_bread == "no" && insurance == "no"
    applicant_status = "Almost certainly a vampire."
  elsif applicant_name == "Drake Cula" || applicant_name == "Tu Fang"
    applicant_status = "Definitely a vampire."
  else
    applicant_status = "Results inconclusive"
  end
  number_of_applicants -= 1
  puts "The result of #{applicant_name}'s application is: #{applicant_status}."
end

