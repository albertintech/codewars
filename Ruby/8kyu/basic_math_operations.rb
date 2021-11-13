=begin
Your task is to create a function that does four basic mathematical operations.

The function should take three arguments - operation(string/char), value1(number), value2(number).
The function should return result of numbers after applying the chosen operation.

Examples(Operator, value1, value2) --> output
('+', 4, 7) --> 11
('-', 15, 18) --> -3
('*', 5, 5) --> 25
('/', 49, 7) --> 7
=end

def basic_op(operator, value1, value2)
  case operator
    when '+'
      value1 + value2
    when '-'
      value1 - value2
    when '*'
      value1 * value2
    when '/'
      value1 / value2
    else
      'Error'
    end
end

p basic_op('+', 4, 7)
p basic_op('-', 15, 8)
p basic_op('*', 5, 5)
p basic_op('/', 49, 7)
