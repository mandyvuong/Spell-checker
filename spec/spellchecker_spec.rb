require 'spellchecker'

describe 'spellchecker' do
  it 'returns the corrected single word (lowercase)' do
    expect(spellchecker('at')).to eq 'at'
  end
  it 'returns the corrected single word (capitalize)' do
    expect(spellchecker('At')).to eq 'At'
  end
  it 'returns the corrected single word (upcase)' do
    expect(spellchecker('AT')).to eq 'AT'
  end
  it 'returns the incorrected single word' do
    expect(spellchecker('ta')).to eq '~ta~'
  end
  it 'returns the corrected sentence' do
    expect(spellchecker('At the')).to eq 'At the'
  end
  it 'returns the corrected sentence where there is one incorrected word' do
    expect(spellchecker('ta the')).to eq '~ta~ the'
  end
  it 'returns the corrected sentence where there is one incorrected word and a fullstop' do
    expect(spellchecker('ta the.')).to eq '~ta~ the.'
  end
  it 'returns the corrected sentence where there is one incorrected word and other symbols' do
    expect(spellchecker('ta the.?,!')).to eq '~ta~ the.?,!'
  end
  it 'raises an error if string contains a number' do
    expect{spellchecker('at8')}.to raise_error('Invalid')
  end
  it 'raises an error if string contains numbers' do
    expect{spellchecker('123at')}.to raise_error('Invalid')
  end
end

