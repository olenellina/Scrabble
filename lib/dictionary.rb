#dictionary.rb

require_relative '../scrabble'
require_relative 'scoring'
require_relative 'tile'
require_relative 'player'

class Scrabble::Dictionary
  attr_reader :dictionary_array
  @dictionary_array = []

  File.open("dictionary.txt", 'r').each do |line|
    @dictionary_array << line
  end

  def self.dictionary(word)
    if dictionary_array.include? (word)
      return true
    end

    return false
  end
end
