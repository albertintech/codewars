=begin
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

Input: String of integers
Output: String with 'max int space min int' pattern

-Split string into array of integers
-Iterate over integers
-Find max value
-Find min value
-Return both values in a string

=end

def high_and_low(numbers)
  arr = numbers.split.map(&:to_i)
  "#{arr.max} #{arr.min}"
end

p high_and_low("1 2 3 4 5")  # return "5 1"
p high_and_low("1 2 -3 4 5") # return "5 -3"
p high_and_low("1 9 3 4 -5") # return "9 -5"
