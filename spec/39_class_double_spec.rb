class Deck
  def self.build

  end
end

class CardGame
  attr_reader :start

  def start
    @cards = Deck.build
  end
end

describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const
  end
end

# not mocking an instance of deck, but existing as class methods instead
# as stubbed const makes sure whenever deck is called that we should use this class double instead.
# Otherwise if we called subject.start it would try to call the actual class instead of the double
