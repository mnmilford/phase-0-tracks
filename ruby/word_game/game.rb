class WordGame

  def initialize
    @word = ''
    @guessed = []
  end

end

# Method to check the progress of Player 2 guesses
def status(word, guessed_letters)
  display_string = ''
  word.chars.each do |letter|
    if guessed_letters.include?(letter)
      display_string << letter
    else 
      display_string << '_'
    end
  end
  display_string
end

puts "Player 1: Enter a word for Player 2 to guess."
word = gets.chomp
guesses_left = word.length
progress = "_" * word.length

puts "Player 2: The word you're guessing has #{guesses_left} letters."