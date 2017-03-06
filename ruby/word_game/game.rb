class WordGame

  def initialize
    @word = ''
    @guessed = []
  end

end

puts "Player 1: Enter a word for Player 2 to guess."
word = gets.chomp
guesses_left = word.length
progress = "_" * word.length

puts "Player 2: The word you're guessing has #{guesses_left} letters."