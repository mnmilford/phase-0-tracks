# Design a Game

# - Ask Player 1 to enter a word for Player 2 to start guessing
# - Save Player 1 word
# - Tell Player 2 that the word has a certain number of letters & how many guesses left
# - Ask Player 2 to enter a letter
# - If the letter is included in the Player 1 word
#     + Return a message with the word showing the correct letter in place
# - Otherwise, say that the letter is not in the word & display how many guesses are left
# - This process continues until Player 2 has discovered all the letters OR runs out of guesses

require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

  it "has Player 1 enter a word" do
  end

end