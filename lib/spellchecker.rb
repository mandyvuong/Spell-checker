def spellchecker(sentence)
  sentence = format(sentence)
  corrected = sentence.map { |word|
    dictionary.include?(word.downcase) ? word : "~#{word}~"
  }
  corrected.join(' ')
end

def dictionary
  ['at', 'the']
end

def format(sentence)
  sentence.split(' ')
end