#dictionary_spec.rb

require_relative 'spec_helper'
require_relative '../lib/scoring'
require_relative '../lib/player'
require_relative '../lib/tile'
require_relative '../lib/dictionary'

describe 'Testing scrabble player' do
  it 'returns true if the word exist' do
    expect (Scrabble::Dictionary.dictionary("cat")).must_equal(true)
  end

  it 'returns true if the word exist' do
    expect (Scrabble::Dictionary.dictionary("ashgasl")).must_equal(false)
  end

  it 'returns true if the word exist' do
    expect (Scrabble::Dictionary.dictionary("12345")).must_equal(false)
  end

  
end
