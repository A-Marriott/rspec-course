require 'card'

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a value' do
    expect(card.value).to eq('Ace'), "expected #{card.value} to equal Ace"
  end
end
