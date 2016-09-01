require_relative 'spec_helper'
require_relative '../lib/scoring'
require_relative '../lib/player'
require_relative '../lib/tile'


describe 'Testing the TileBag class' do
  tilebag1 = Scrabble::TileBag.new

  tilebag2 = Scrabble::TileBag.new
  tilebag2.draw_tiles(2)

  tilebag3 = Scrabble::TileBag.new

  it 'Testing that if we call TileBag.new, we expcect a default tile collection' do
    expect ((tilebag1.default_tiles).class).must_equal(Array)
  end

  it 'Testing that we can return an array of random tiles that is removed from the tile bag' do
    expect ((tilebag1.draw_tiles(5)).size).must_equal(5)
  end

  it 'Testing that we can return the number of tiles remaining in the bag' do
    expect (tilebag2.tiles_remaining).must_equal(96)
  end

  it 'Testing that the size of the initial tile bag is equal to 98' do
    expect (tilebag3.default_tiles.size).must_equal(98)
  end

  it "Testing to ensure raise ArugmentException if incorrect number of tiles are drawn" do
    expect(proc {tilebag1.draw_tiles(8)}).must_raise ArgumentError
  end

end
