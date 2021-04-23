# What is an alternate way to write the assertion below?

  # expect({}.empty?).to be(true)

describe Hash do
  it 'should check if a hash is empty' do
    expect(subject).to be_empty
  end
end

# Write an assertion that validates that every element in the array [10, 20, 30] is even.

# Write an assertion that validates that every element in the array [0, 1, 2] is greater than or equal to 0.

describe 'validating multiple array elements' do
  it 'every array element should be even' do
    expect([10, 20, 30]).to all(be_even)
  end

  it 'every array element should be greater than or equal to 0' do
    expect([0, 1, 2]).to all(be >= 0)
  end
end
