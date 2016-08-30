require_relative 'spec_helper'
require_relative '../lib/scoring'

describe 'Testing scrabble scoring' do

  it 'return 5 points for "cat"' do
    expect (Scrabble::Scoring.score("cat")).must_equal(5)
  end

  it 'return 57 points for the 7-letter word "letters" with bonus 50 points' do
    expect (Scrabble::Scoring.score("letters")).must_equal(57)
  end

  it 'return 41 points for "oxyphenbutazone"' do
    expect (Scrabble::Scoring.score("oxyphenbutazone")).must_equal(41)
  end

  # it 'return the highest scoring word in an array. Return "apple" from ["banana", "apple", "dog"]' do
  #   expect (Scrabble::Scoring.highest_score_from(["banana", "apple", "dog"])).must_equal("apple")
  # end
  #
  # it 'In case of a tie between equal length words, return the first winning word from the array. Return "cat" from ["cat", "dog"]' do
  #   expect (Scrabble::Scoring.highest_score_from(["cat", "dog"])).must_equal("cat")
  # end
  #
  # it 'In case of a tie between unequal length words, return the first the word with the shortest length from the array. Return "jet" from ["jet", "apples"]' do
  #   expect (Scrabble::Scoring.highest_score_from(["jet", "apples"])).must_equal("jet")
  # end
  #
  # it 'In case of a tie between a 7-letter word and a word with shorter length, return the 7-letter word from the array. Return "aeioubg" from ["zzzzzz", "aeioubg"]' do
  #   expect (Scrabble::Scoring.highest_score_from(["zzzzzz", "aeioubg"])).must_equal("aeioubg")
  # end
end
