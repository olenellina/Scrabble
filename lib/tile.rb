require_relative '../scrabble'
require_relative 'player'

class Scrabble::TileBag
  attr_reader :default_tiles

  def initialize
    tile_array = []

    Scrabble::TILE_BAG.each do |k, v|
      v.times do
        tile_array << k
      end
    end

    @default_tiles = tile_array
  end

  def draw_tiles(num)

    if num <= 0 || num > 7
      raise ArgumentError
    end

    sample_array = @default_tiles.sample(num)

    sample_array.each do |x|
      @default_tiles.delete_at(@default_tiles.index(x))
    end

    return sample_array
  end

  def tiles_remaining
    return @default_tiles.length
  end

end


# test_tile_bag = Scrabble::TileBag.new
# puts test_tile_bag.default_tiles.size
# puts test_tile_bag.draw_tiles(5)
# puts test_tile_bag.default_tiles.size
