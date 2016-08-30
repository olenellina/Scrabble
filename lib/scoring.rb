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
