require 'card'

RSpec.describe Card do
  it 'has a suit and value' do
    card = Card.new('Ace of spades')
    expect(card.type).to eq('Ace of spades')
  end
end
