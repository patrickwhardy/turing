require_relative 'calculator'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < Minitest::Test

  def setup
    @calc = Calculator.new
  end

  def test_calculator_accepts_strings
    skip
    assert_equal 18, @calc.calculate("What is 5 plus 13?")
  end

  def test_it_can_parse_integers_from_sting
    assert_equal [5, 13], @calc.get_integers("What is 5 plus 13?")
  end

  def test_it_gets_functions_from_string
    # assert_equal ["plus"], @calc.get_functions("What is 5 plus 13?")
  end

end
