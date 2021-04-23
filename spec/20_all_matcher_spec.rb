describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [5, 7, 9].each do |x|
    #   expect(x).to be_odd
    # end

    expect([7, 7, 7]).to all(eq(7))
    expect([5, 7, 3]).to all(be_odd)
  end
end
