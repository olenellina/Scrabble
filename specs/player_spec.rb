#name: returns the value of the @name instance variable
#plays: returns an Array of the words played by the player
#play(word): Adds the input word to the plays Array
#Returns false if player has already won
#Returns the score of the word
#total_score: Returns the sum of scores of played words
#won?: If the player has over 100 points, returns true, otherwise returns false
#highest_scoring_word: Returns the highest scoring played word
#highest_word_score: Returns the highest_scoring_word score

require_relative 'spec_helper'
require_relative '../lib/scoring'
require_relative '../lib/player'

describe 'Testing scrabble player' do

  it 'returns value of the @name instance variable' do
    expect (Scrabble::Player.name("Ada")).must_equal("Ada")
  end

  it 'returns an Array of the words played by the player' do
    except (Scrabble::Player.plays(Scrabble::Player.play("")))
  end

  it 'adds the input word to the plays Array' do
    expect (Scrabble::Player.play("Zebra")).must_equal(["Zebra"])
  end

end
