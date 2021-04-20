describe Hash do
  subject(:my_hash) do
    { a: 1, b: 2 }
  end

  it 'should return 1 when passed the key of a' do
    expect(my_hash[:a]).to eq(1)
  end
end

# Two things we do here:
# 1. We can alter subject before executing tests to whatever we want it to be
# 2. We rename the subject variable to whatever we pass as an argument (in this case :my_hash)

describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'should have a length of two' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'should still have a length of two' do
    expect(sally.length).to eq(2)
  end
end
