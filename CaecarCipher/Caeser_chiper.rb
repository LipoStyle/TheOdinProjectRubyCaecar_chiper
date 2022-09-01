# declaration of our method
def caesar_cipher(string, number)
# declaring and initializing our variables 
  letters =("a".."z").to_a
  newString = []

# first we loop our string letters by spliting them 
  string.split("").each {|letter_in_string|
# then we loop our letters array to find the mach
    letters.each {|letter_in_letters| 
# then if we find a much we change it with another letter and store it in a new array 
      if letter_in_letters == letter_in_string
        index = letters.index(letter_in_letters) + number
        if index > 25
          index = index - 25
        end
        newString.push(letters[index])
      elsif letter_in_letters.upcase == letter_in_string
        index = letters.index(letter_in_letters) + number
        if index > 25
          index = index - 25
        end
        newString.push(letters[index].upcase)
      else
        newString.push(letter_in_string)
        break
      end
        }
  }
# and lastly we return our new encrypted arry 
  return newString.join
  
end

# we call the method with our parameters
puts caesar_cipher("abc Just TEst 3434", 1)