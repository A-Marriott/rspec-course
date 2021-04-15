require 'card'

RSpec.describe Card do
  before do
    @card = Card.new('Ace', 'Spades')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end

  it 'has a value' do
    expect(@card.value).to eq('Ace')
  end
end
