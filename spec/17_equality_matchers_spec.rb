describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'without strict equality' do
    it 'a and b should match' do
      expect(a).to eq(b)
    end
  end

  describe 'with strict equality' do
    it 'a and b should not match' do
      expect(a).not_to eql(b)
    end
  end
end
