# declaring our dictionary array
dictionary = ["below","down","go","going","horn","how","howdy","it","i", "low","own","part","partner","sit"]

# declaring our method
def substrings(string, dctionary)
  #declaring hashes and initializing it to empty
  array_of_hashes = {}

  # looping our dctionary array with each method and cheking if the world appears and if yes how many times
  dctionary.each{|word| 
    if string.include?(word)
      frequency = string.scan(/(?=#{word})/).count
      array_of_hashes[word] = frequency
    end
  }
  # retruning the hash
  return array_of_hashes
end

p substrings("below", dictionary)