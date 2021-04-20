describe 'comparison matchers' do
  it 'allows for comparison with ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 11
  end

  describe 100 do
    it { is_expected.to be > 50 }
  end
end


# use be for comparison matchers
