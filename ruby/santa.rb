class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender

  def initialize(gender, ethnicity)
    # puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(1..140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name) 
      @reindeer_ranking.delete_if {|name| name == reindeer_name}
      @reindeer_ranking << reindeer_name
    else
      puts "Sorry, that reindeer is not part of the crew. Try again!"
    end
  end
end

# Program to create & display Santas
puts "How many Santas would you like to join SantaCon?"
number_of_santas = gets.chomp.to_i
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
number_of_santas.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  puts "Santa #{i+1} - Age: #{santas[i].age}, Gender: #{santas[i].gender}, Ethnicity: #{santas[i].ethnicity}"
end

# Driver code to test various instance methods
# santas[0].get_mad_at("Bob")
# santas[0].celebrate_birthday
# p santas[0].age
# santas[0].gender = "Apache Helicopter"
# p santas[0]

# p santas