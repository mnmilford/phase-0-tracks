puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "Scale from 1-10, how squeaky is this hamster?"
volume_level = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is it a good candidate for adoption? (Yes/No)"
candidate_status = gets.chomp

estimated_age = nil
puts "What is the estimated age of the hamster?"
estimated_age = gets.chomp.to_i

puts "OK cool! So if I'm understanding this correctly, the hamster's name is #{hamster_name}. Its volume level is #{volume_level}. Its fur color is #{fur_color}. When asked if you thought it was a good candidate, you said #{candidate_status}. Finally, you estimate its age to be #{estimated_age}."