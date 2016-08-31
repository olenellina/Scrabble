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
  attr_accessor :name

  def initialize (name)
    @name = name
    @plays_array = []
  end

  def plays
    return @plays_array
  end

  def play(word)
    word.each do |letter|
      unless letter =~ [/A-Za-z/]
        raise ArgumentError
      end
    end

    @plays_array << word

    if won?
      return false
    else
      return Scrabble::Scoring.score(word)
    end
  end

  def total_score
    score = 0
    plays.each do |word|
      score += Scrabble::Scoring.score(word)
    end
    return score
  end

  def won?
    if total_score > 100
      return true
    else
      return false
    end
  end

  def highest_scoring_word
    return Scrabble::Scoring.highest_score_from(plays)
  end

  def highest_word_score
    return Scrabble::Scoring.score(Scrabble::Scoring.highest_score_from(plays))
  end
end
