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

    if tie_counter > 0
      minvalue = tie_hash[values].min

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

    return arraywords[index]
  end
end

# puts Scrabble::Scoring.score("zzzzzzz")

# case char
#   when SCORE_TABLE[:1].value.include? char
#     score += 1
#   when SCORE_TABLE[:2].value.include? char
#     score += 2
#   when SCORE_TABLE[:3].value.include? char
#     score += 3
#   when SCORE_TABLE[:4].value.include? char
#     score += 4
#   when SCORE_TABLE[:5].value.include? char
#     score += 5
#   when SCORE_TABLE[:8].value.include? char
#     score += 8
#   when SCORE_TABLE[:10].value.include? char
#     score += 10
# end

# Scrabble::SCORE_TABLE.each do |key, value|
#   if value.include? char
#     score += key.to_i
#     break
#   end
# end
