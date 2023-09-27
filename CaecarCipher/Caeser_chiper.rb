#decalring a checkMethod
def checkMethod(letter, number)
  #declaring and initializing virables
  index = 0
  letters =("a".."z").to_a
  letters_upCased = ("A".."Z").to_a
  new_letter = ""
  #finding and replacing the letter to the new letter
  if letter == " "
    new_letter = " "
  elsif letter.class == Numeric
    new_letter = letter
  else
    if letters.include?(letter)
      index = letters.index(letter) + number
      if index > 25
        index = 26 - index
      end
      new_letter = letters[index]
    elsif letters_upCased.include?(letter)
      index = letters_upCased.index(letter) + number
      if index > 25
        index = 26 - index
      end
      new_letter = letters_upCased[index]
    else
      new_letter = letter
    end
  end
  #returning the new letter
    return new_letter 
  end

# declaration of our method
def caesar_cipher(string, number)
  # declaring and initializing our variables 
  newString = []
  #looping and calling checkMethod
  string.split("").each do |item|
    newString.push(checkMethod(item, number))
  end
  #retruning the new String
  return newString.join
end
  # we call the method with our parameters
  puts caesar_cipher("Hello There you !!12 3123  ", 3)
