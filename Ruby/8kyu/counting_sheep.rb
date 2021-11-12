=begin
Consider an array/list of sheep where some sheep may be missing from their place. We need a function that counts the number of sheep present in the array (true means present).

For example,

[true,  true,  true,  false,
  true,  true,  true,  true ,
  true,  false, true,  false,
  true,  false, false, true ,
  true,  true,  true,  true ,
  false, false, true,  true]

The correct answer would be 17.

Hint: Don't forget to check for bad values like null/undefined

- Given an array of boolean values
- Count true values only
- Return total true values as an integer

- Iterate through array values
- Add every true value to a counter
- Ignore all other values incl. null/undefined (lulz)

=end

# Test Array:

array1 = [true,  true,  true,  false,
          true,  true,  true,  true ,
          true,  false, true,  false,
          true,  false, false, true ,
          true,  true,  true,  true ,
          false, false, true,  true ]


def countSheeps array
  count = 0
    array.select do |sheep|
      if sheep == true
        count += 1
      end
    end
    count # implicit return
end

# def countSheeps array
#     array.count {|sheep| sheep == true}
# end

p countSheeps(array1)
