describe 'shorthand syntax' do
  subject { 5 }

  it 'should equal 5' do
    expect(subject).to eq(5)
  end

  context 'with one line syntax' do
    it { is_expected.to eq(5) }
  end
end

# When we use the subject (IMPORTANT), we can use this format to write a single line expect statement
