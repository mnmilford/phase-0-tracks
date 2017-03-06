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
letters_guessed = []

while progress != word && guesses_left > 0
  puts "Current Status: #{progress}"
  puts "Guesses Left: #{guesses_left}"
  puts "Guess a letter!"
  letter = gets.chomp
  
  if letters_guessed.include? letter
    puts "You already tried that letter"
  elsif word.include? letter
    letters_guessed << letter
    progress = status(word, letters_guessed)
  else
    letters_guessed << letter
    guesses_left -= 1
    progress = status(word, letters_guessed)
  end
end

if progress == word
  puts "You got it! The word was #{word}."
else
  puts "Good try! The word was #{word}."
  puts "You ended with #{progress}."
end