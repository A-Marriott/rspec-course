describe 'contain exactly matcher' do
  subject { [1, 2, 3] }

  context 'long form syntax' do
    it 'should check for the presence of all elements' do
      expect(subject).to contain_exactly(3, 2, 1)
    end
  end

  it { is_expected.to contain_exactly(1, 3, 2) }
end

# order doesn't matter, but need same exact elements
