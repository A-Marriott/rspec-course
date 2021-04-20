describe 'predicate methods and matchers' do
  it 'can be tested with ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    expect(16 / 2).to be_even
    expect([]).to be_empty
  end
end

# predicate methods are just methods that end with ?, i.e. result in boolean
# you can use be_method on any predicate method
