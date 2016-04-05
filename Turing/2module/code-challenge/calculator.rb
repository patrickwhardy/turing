require 'pry'
class Calculator

  def initialize
    @functions = { "plus": +, "times": *, "minus": -, "divided": / }
  end

  def calculate(string)
    string
  end

  def get_integers(string)
    split = string.split(' ')
    integer_arrays = split.map { |i| i.scan(/\d/)}
    joined_integers = integer_arrays.map { |i| i.join('') }
    empties_gone = joined_integers.reject { |i| i.empty? }
    empties_gone.map { |i| i.to_i }
  end

  def get_functions(string)
    split = string.split(' ')
  end

end
