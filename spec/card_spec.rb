require 'card'

RSpec.describe Card do
  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end

  it 'has a value' do
    card = Card.new('Ace', 'Spades')
    expect(card.value).to eq('Ace')
  end
end
