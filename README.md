#

Megasoftweird..word processor
feature to build
spellchecker
prototype a spellchecker today

#

spellcheck a sentence
output same format..i.e. word

incorrect word ~incorrect word~
INPUT always be a string

input spellchecker(text)
ouput text
dictionary - list of words

| input                          | output                          |
| ------------------------------ | ------------------------------- |
| at                             | at                              |
| At                             | At                              |
| AT                             | AT                              |
| ta                             | ~ta~                            |
| At the                         | At the                          |
| ta the                         | ~ta~ the                        |
| ta the.                        | ~ta~ the.                       |
| at the moment there is nothing | at the moment there is nothing  |
| at the momnt there is nothing  | at the ~momnt~ there is nothing |

FEEDBACK

- Explored more on the problem domain i.e. punctuation, proper nouns and numbers
- Could have implemented dictionary earlier
