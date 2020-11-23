# class ZeroDivisionError < StandardError; end
class CantDivideBy100 < StandardError; end

module Divider
  def self.division(number1, number2)
    raise CantDivideBy100 unless number2 != 100

    number1 / number2
  rescue CantDivideBy100
    "I don't like to divide by 100"
  rescue ZeroDivisionError
    "I cannot divide by zero"
  rescue StandardError
    "Both arguments need to be Numerics"
  end
end
