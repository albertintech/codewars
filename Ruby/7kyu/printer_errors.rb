=begin
In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.

The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a...

Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.

You have to write a function printer_error which given a string will return the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.

The string has a length greater or equal to one and contains only letters from ato z.

Examples:

s="aaabbbbhaijjjm"
printer_error(s) => "0/14"

s="aaaxbbbbyyhwawiwjjjwwm"
printer_error(s) => "8/22"

Input: One string
Output: Error rate as a fraction in string form

-Accept string input
-Count each occurance of letters 'n' through 'z' as an error
-Return total number of erros over total string length

=end

# def printer_error(s)
#   errors = 0
# 	arr = s.chars
#   arr.each {|e| e.eql?('n'..'z')}
#   errors
# end

def printer_error(s)
  errors = 0
	arr = s.chars
  arr.each do |e|
    if e.match?(/[n-z]/) # had to look up how to do regex
      errors += 1
    end
  end
  "#{errors}/#{arr.length}"
end

s="aaabbbbhaijjjm"
p printer_error(s)

s="aaaxbbbbyyhwawiwjjjwwm"
p printer_error(s)
