#dictionary_spec.rb

require_relative 'spec_helper'
require_relative '../lib/scoring'
require_relative '../lib/player'
require_relative '../lib/tile'
require_relative '../lib/dictionary'
# require_relative '../lib/dictionary1'


describe 'Testing scrabble player' do
  it 'returns true if the word exist' do
    expect (Scrabble::Dictionary.dictionary("cat")).must_equal(true)
  end

  it 'returns false if the word does not exist' do
    expect (Scrabble::Dictionary.dictionary("ashgasl")).must_equal(false)
  end

  it 'returns false if the word does not exist' do
    expect (Scrabble::Dictionary.dictionary("12345")).must_equal(false)
  end

  it 'returns false if the word does not exist' do
    expect (Scrabble::Dictionary.dictionary("$^&)&^")).must_equal(false)
  end

  it 'returns true if a uppercase word exists' do
    expect (Scrabble::Dictionary.dictionary("DOG")).must_equal(true)
  end
end
