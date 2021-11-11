=begin
Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
=end

def bool_to_word bool
  if bool == true
    'Yes'
  else bool == false
    'No'
  end
end

p bool_to_word(true)
p bool_to_word(false)
