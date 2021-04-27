describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy do |value|
      subject == subject.reverse
    end
  end

  it 'can accept a customer error message' do
    expect('word').to satisfy('be a palindrome') do |value|
      value == value.reverse
    end
  end
end
