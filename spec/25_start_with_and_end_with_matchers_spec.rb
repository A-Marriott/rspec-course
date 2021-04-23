describe 'start with and end with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).not_to start_with('Cat')
    end
  end

  describe [1, 2, 3] do
    it 'should check for elements at the beginning or end of an array' do
      expect(subject).to start_with(1, 2)
    end
  end
end
