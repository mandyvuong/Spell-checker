def spellchecker(sentence)
  sentence.downcase == 'at' ? sentence : "~#{sentence}~"
end