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
  #binding.pry
  end

  def array_score(array)
    array.each do |char|
      score = @scores[char.upcase]
      return "#{char} has the value #{score}"
    end
  end

  def string_score(word)
    results = ''
    word_array = word.split('')
    word_array.each do |char|
      score = @scores[char.upcase]
      results = results + "\n" + "#{char.upcase} has the value #{score}"
    end
    results
  end

  def score_sum(word)
    score = 0
    word_array = word.split('')
    word_array.each do |char|
      score += @scores[char.upcase]
    end
    "#{word} has the total score #{score}"
  end

end
