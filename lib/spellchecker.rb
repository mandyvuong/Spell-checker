def spellchecker(sentence)
  if sentence.downcase == 'at'
    sentence
  else
    "~#{sentence}~"
  end
end