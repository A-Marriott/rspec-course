require '29_respond_to_matcher'

describe HotChocolate do
  it 'confirms and object responds to a method' do
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms that object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end

# Concept behind this matcher is centred around polymorphism. We're literally just checking that a given object has access to a given method, not about what happens within the method
