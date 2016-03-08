require_relative 'logic_gates'
require 'minitest/autorun'
require 'minitest/pride'

class LogicGatesTest < Minitest::Test
  def test_Double_inputs_default_0
    gate = And::Double.new
    assert_equal 0, gate.input_a
    assert_equal 0, gate.input_b
  end
  def test_Double_inputs_are_assigned_from_object
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 1, gate.input_a
    assert_equal 1, gate.input_b
  end

  def test_Double_output_will_evaluate_1_if_both_inputs_are_1
    gate = And::Double.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 1, gate.output
  end

  def test_Double_output_will_evaluate_0_if_one_input_is_0
    gate = And::Double.new
    gate.input_a = 1
    assert_equal 0, gate.output
  end

  def test_Double_output_will_evaluate_0_if_both_ins_are_0
    gate = And::Double.new
    assert_equal 0, gate.output
  end

  def test_Triple_inputs_default_to_0
    gate = And::Triple.new
    assert_equal 0, gate.input_a
    assert_equal 0, gate.input_b
    assert_equal 0, gate.input_c
  end

  def test_Triple_inputs_can_be_assigned
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 1
    gate.input_c = 1

    assert_equal 1, gate.input_a
    assert_equal 1, gate.input_b
    assert_equal 1, gate.input_c
  end

  def test_Triple_output_will_evaluate_0_if_one_input_is_0
    gate = And::Triple.new
    gate.input_a = 1
    gate.input_b = 1
    assert_equal 0, gate.output
  end

  def test_Triple_output_will_evaluate_0_if_all_ins_are_0
    gate = And::Triple.new
    #assert_equal 0, gate.output
  end

end
