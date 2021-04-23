describe 'be matchers' do
  it 'can test for truthiness' do
    expect("").to be_truthy
  end

  it 'can test for falsiness' do
    expect(nil).to be_falsey
  end
end
