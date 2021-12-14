def spellchecker(sentence)
  validation(sentence)
  sentence = format(sentence)
  corrected = sentence.map { |word|                 
    dictionary.include?(word.downcase.gsub(/[.,?!]/, '')) ? word : "~#{word}~"
  }
  corrected.join(' ')
end

def dictionary
  ['at', 'the']
end

def format(sentence)
  sentence.split(' ')
end

def validation(sentence)
  raise 'Invalid' if sentence.include?('8') 
end