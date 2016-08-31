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
  player1 = Scrabble::Player.new("Ada")
  player1.play("zebra")
  player1.play("dog")
  player1.play("cat")

  player2 = Scrabble::Player.new("Sue")
  player2.play("apple")
  player2.play("banana")
  player2.play("grapes")

  player3 = Scrabble::Player.new("Rachel")
  player3.play("zzzzzzz")
  player3.play("quiz")
  player3.play("letters")

  player4 = Scrabble::Player.new("Ann")
  player4.play("cup")
  player4.play("plate")


  player5 = Scrabble::Player.new("Adam")
  player5.play("notebook")
  player5.play("pen")


  it "Testing to ensure raise ArugmentException if given a non-letter" do
    expect(proc {player1.play("1234")}).must_raise ArgumentError
  end

  it 'returns value of the @name instance variable' do
    expect (player1.name).must_equal("Ada")
  end

  it 'returns an Array of the words played by the player' do
    expect (player1.plays).must_equal(["zebra", "dog", "cat"])
  end

  it 'adds the input word to the plays Array' do
    expect (player2.play("mango")).must_equal(8)
  end

  it 'returns false if the player has won' do
    expect (player3.play("word")).must_equal(false)
  end

  it 'returns score of the word if the player has not won' do
    expect (player4.play("fork")).must_equal(11)
  end

  it 'returns true if player has over 100 points.' do
    expect (player3.won?).must_equal(true)
  end

  it 'returns false if player has less than 100 points' do
    expect (player2.won?).must_equal(false)
  end

  it 'returns the sum scores of played words' do
    expect (player5.total_score).must_equal(19)
  end

  it 'returns the highest scoring played word' do
    expect (player3.highest_scoring_word).must_equal("zzzzzzz")
  end

  it 'returns the highest scored for the highest scoring word' do
    expect (player3.highest_word_score).must_equal(120)
  end
end
