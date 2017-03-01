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

  def initialize
    puts "Initializing new puppy instance ..."
  end

end

# fido = Puppy.new
# fido.fetch("ball")

# fido.speak(3)

# fido.roll_over

# puts fido.dog_years(5)

# fido.play_dead


# Release 2: Write Your Own Class, and Experiment

class DBC_student

  def initialize
    puts "New student accepted to Dev Bootcamp!"
  end

  def pairing(student1, student2, challenge)
    puts "#{student1} and #{student2} will pair on challenge #{challenge}."
  end

  def peer_review(student1, student2, challenge)
    puts "#{student1} will review challenge #{challenge} completed by #{student2}."
  end

end

student = DBC_student.new

student.pairing("Michael", "Stacy", 6.2)

student.peer_review("Stacy", "Michael", 6.4)

student_count = 0
student_arr = []
until student_count == 50
  student_arr << DBC_student.new
  student_count += 1
end

p "Number of students: #{student_arr.length}."
p student_arr

student_arr.each do |student|
  student.pairing("Michael", "Stacy", 6.2)
  student.peer_review("Stacy", "Michael", 6.4)
end