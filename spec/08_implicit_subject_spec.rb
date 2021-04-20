describe Hash do
  it 'should start off empty' do
    expect(subject).to eq({})
  end
end

# We can use the object passed to describe to instantiate whatever object we want. Here we make a hash, but you can instaiate a string, class, whatever.
# It is also memoized within an example - so we can alter the object and persist those alterations within our example, whilst creating new objects between examples
