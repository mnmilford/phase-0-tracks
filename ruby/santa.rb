class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
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
    @reindeer_ranking.delete_if {|name| name == reindeer_name}
    @reindeer_ranking << reindeer_name
  end

  def gender= (new_gender)
    @gender = new_gender
  end
end

# northpole_king = Santa.new("male", "white")
# northpole_king.speak
# northpole_king.eat_milk_and_cookies("snickerdoodle")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas[0].get_mad_at("Dasher")
santas[0].celebrate_birthday
santas[0].gender=("transgender female")
p santas[0]