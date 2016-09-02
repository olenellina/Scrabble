#dictionary.rb

require_relative '../scrabble'
require_relative 'scoring'
require_relative 'tile'
require_relative 'player'

class Scrabble::Dictionary
  # attr_reader :dictionary_array
  @dictionary_array = []

  File.open("./lib/dictionary1.txt", 'r').each do |line|
    @dictionary_array << line.strip
  end

  def self.dictionary(word)
    if @dictionary_array.include?(word.upcase)
      return true
    else
      return false
    end


  end
end
