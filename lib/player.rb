# Create a Scrabble::Player class with a minimum of 11 specs. The only required paramter for instances of the class is the player's name. Instances of the class should repond to the following messages:
#
# #name: returns the value of the @name instance variable
# #plays: returns an Array of the words played by the player
# #play(word): Adds the input word to the plays Array
# Returns false if player has already won
# Returns the score of the word
# #total_score: Returns the sum of scores of played words
# #won?: If the player has over 100 points, returns true, otherwise returns false
# #highest_scoring_word: Returns the highest scoring played word
# #highest_word_score: Returns the highest_scoring_word score

require_relative '../scrabble'
require_relative 'scoring'

class Scrabble::Player
  @@plays_array = []
  def self.name(name)
    @name = name
    return name
  end

  def self.plays
    return @@plays_array
  end

  def self.play(word)
    @@plays_array << word
    plays
  end

  def total_score
  end

  def won?
  end

  def highest_scoring_word
  end

  def highest_word_score
  end
end
