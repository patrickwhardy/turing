gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'scrabble2'

class ScrabbleTest < Minitest::Test

  def test_score_outputs_string
    scrabble = Scrabble.new
    array = ["H"]
    assert_equal "H has the value 4", scrabble.array_score(array)
  end

  def test_string_score_outputs_string
    scrabble = Scrabble.new
    word = "hello"
    assert_equal "
    H has the value 4
    E has the value 1
    L has the value 1
    L has the value 1
    O has the value 1", scrabble.string_score(word)
  end

  def test_score_sum_returns_string
    skip
    scrabble = Scrabble.new
    word = "hello"
    assert_equal "hello has the total score 8", scrabble.score_sum(word)
  end

end
