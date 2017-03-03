class Santa

  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

end

northpole_king = Santa.new
northpole_king.speak
northpole_king.eat_milk_and_cookies("snickerdoodle")
