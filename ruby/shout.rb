# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "OMG! " + words.upcase + "! :)"
#   end
# end

module Shout
  def whisper_shout_question(words)
    words.upcase + "?????"
  end

  def reverse_shout(words)
    "#{words.upcase}!!!!!".reverse
  end
end

# Driver code to test Shout module
# puts Shout.yell_angrily("Why do you have to be the way you are?")
# puts Shout.yelling_happily("I love that shirt")

# Driver code to test NEW Shout module
class Seinfeld
  include Shout
end

class Crazy_person
  include Shout
end

shout_test1 = Seinfeld.new
shout_test2 = Crazy_person.new

puts "Shout Test 1 - Seinfeld Class"
puts "---------------------"
puts shout_test1.whisper_shout_question("What's the deal with airline food")
puts shout_test1.reverse_shout("What's the deal with airline food")
puts "\n"
puts "Shout Test 2 - Crazy_person Class"
puts "---------------------"
puts shout_test2.whisper_shout_question("Have you ever had a dream that that﻿ you umm you had you'd you would you could you'd do you wi you wants you you could do so you you'd do you can you you want you want him to do you so much you can do anything")
puts shout_test2.reverse_shout("Have you ever had a dream that that﻿ you umm you had you'd you would you could you'd do you wi you wants you you could do so you you'd do you can you you want you want him to do you so much you can do anything")
