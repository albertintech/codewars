=begin
Make a program that filters a list of strings and returns a list with only your friends name in it.

If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...

Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

Example:
people: ["Ryan", "Kieran", "Mark"] => friends: ["Ryan", "Mark"]

Note: keep the original order of the names in the output.

Input: Array of strings
Output: Sub array of strings

-Iterate over array
-Find length of each string
 -Keep strings <= 4 characters long
 -Discard other strings
-Return sub array

=end

names = ["Ryan", "Jimmy", "123", "4", "Cool Man"]

# def friend(friends)
#   friends.select { |name| name.size == 4}
# end

# def friend(friends)
#   friends.select do |name|
#     name.size == 4
#   end
# end

def friend(friends)
  arr = []
  friends.each do |name|
    if name.size == 4
      arr << name
    end
  end
  arr
end


p friend(names)
