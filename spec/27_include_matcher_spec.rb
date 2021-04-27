describe 'inclusion matcher' do
  context 'hot chocolate' do
    it 'checks substring inclusion' do
      expect(subject).to include('hot')
    end
  end

  context [10, 20, 30] do
    it 'checks for inclusion in the array' do
      expect(subject).to include(20, 10)
    end
  end

  context ({ a: 1, b: 2 }) do
    it 'checks for key and value existence' do
      expect(subject).to include(:a)
      expect(subject).to include(a: 1)
    end
  end
end
