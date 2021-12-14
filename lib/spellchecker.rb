def spellchecker(sentence)
  dictionary = ['at', 'the']
  sentence = sentence.split(' ')
  corrected = sentence.map { |word|
    if dictionary.include?(word.downcase)
      word
    else
      "~#{word}~"
    end
  }
  corrected.join(' ')
end