module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "OMG! " + words.upcase + "! :)"
  end
end

# Driver code to test Shout module
puts Shout.yell_angrily("Why do you have to be the way you are?")
puts Shout.yelling_happily("I love that shirt")