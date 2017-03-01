class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do 
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    return human_years*7
  end

  def play_dead
    puts "*rolls halfway over and sticks tongue out*"
  end

end

fido = Puppy.new
fido.fetch("ball")

fido.speak(3)

fido.roll_over

puts fido.dog_years(5)

fido.play_dead