require 'spellchecker'

describe 'spellchecker' do
  it 'returns the corrected single word (lowercase)' do
    expect(spellchecker('at')).to eq 'at'
  end
end