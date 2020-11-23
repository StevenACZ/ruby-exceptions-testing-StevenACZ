# Divider

A lot of thing could go wrong during a division. The Divider module will handling most of the errors for you.

Modify `self.division(number1, number2)` in order to:

- Handle `ZeroDivisionError` and instead of crashing the program return "I cannot divide by zero"
- If `number1` or `number2` is not a Numeric value, raise a TypeError exception
- Handle `TypeError` and return "Both arguments need to be Numerics"
- If `number2` is equal to `100`, raise a RunTimeError with the message "I don't like to divide by 100"
- Handle any `RunTimeError` and return the error message.
