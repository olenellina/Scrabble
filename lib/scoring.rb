require_relative '../scrabble'

class Scrabble::Scoring
  def self.score(word)
    score = 0
    if word.length == 7
      score = 50
    end

    word.each_char do |char|
      score += Scrabble::SCORE_TABLE[char]
    end
    return score
  end

  def self.highest_score_from(arraywords)
    score = []
    tie_hash = {}
    tie_counter = -1

    arraywords.each do |word|
      score << Scrabble::Scoring.score(word)
    end
    maxvalue = score.max
    index = score.index(maxvalue)

    score.length.times do |x|
      if score[x] == maxvalue
        tie_counter += 1
        tie_hash[arraywords[x]] = arraywords[x].length
      end
    end

    result = arraywords[index]

    if tie_counter > 0
      result = Scrabble::Scoring.tie(tie_hash)
    end

    return result
  end


  def self.tie (tie_hash)
    minvalue = tie_hash.values.min

    tie_hash.each do |k,v|
      if v == 7
        return k
      end
    end

    tie_hash.each do |key,value|
      if value == minvalue
        return key
      end
    end

  end
end

# Testing:
# puts Scrabble::Scoring.highest_score_from(["apples", "jet", "z"])
