require_relative 'spec_helper'
require_relative '../lib/scrabble'

describe 'Testing scrabble scoring' do

  it '' do
    expect (Scoring.score("cat")).must_equal("I")
  end
