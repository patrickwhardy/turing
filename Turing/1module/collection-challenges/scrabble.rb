require 'pry'

class Scrabble
  def initialize
    @scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10}
  end

  def array_score(array)
    array.each do |letter|
       value = @scores.values_at(letter.upcase)
       return "#{letter.upcase} has a score of #{value[0]}"
    end
  end

  def string_score(word)
    array = word.split
    array_score(array)
  end

  def score_sum(word)
    array = word.upcase.split('')
    score = 0
    array.each do |letter|
      value = @scores.values_at(letter)
      score += value[0]
    end
    return "#{word} has the total score #{score}"
  end

end

#binding.pry
