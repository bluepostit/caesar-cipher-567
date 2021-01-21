def encrypt(sentence)
  # Pseudocode
  # we want to convert a letter to an index

  # create array with all letters of alphabet

  # convert sentence into array of letters
  # map this array to an array of letters:
  #   find index of the letter in regular alphabet
  #   get letter from alphabet array with index - 3
  # combine the letters into words and sentence
  # return the sentence

  alphabet = ('A'..'Z').to_a
  letters = sentence.split('')
  encrypted = letters.map do |letter|
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[index - 3]
  end
  return encrypted.join
end
