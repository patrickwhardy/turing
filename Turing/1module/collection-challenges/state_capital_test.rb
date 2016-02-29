require 'minitest/autorun'
require 'minitest/pride'
require_relative 'state_capitals2'
class StateCapitalsTest < Minitest::Test
def setup
  @capitals = StateCapitals.new
end

def test_capital_outputs_states_capital
assert_equal "Salem", @capitals.capital("Oregon")
end

def test_return_unknown_when_state_info_unknown
  assert_equal "Unknown", @capitals.capital("Tanzania")
end

def test_state_returns_capital
  assert_equal "Colorado", @capitals.state("Denver")
end
end
