$LOAD_PATH.unshift("./27divider")

require "minitest/autorun"
require_relative "divider"

class ExceptionalTest < Minitest::Test
  def test_rescue_zero_division_error
    # skip
    result = Divider.division(10, 0)
    assert_equal "I cannot divide by zero", result
  end
  
  def test_rescue_type_error
    # skip
    result = Divider.division(10, "string")
    assert_equal "Both arguments need to be Numerics", result
  end
  
  def test_raise_run_time_error_with_message
    # skip
    result = Divider.division(200, 100)
    assert_equal "I don't like to divide by 100", result
  end
end