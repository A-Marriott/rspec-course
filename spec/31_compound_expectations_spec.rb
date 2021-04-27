describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end
end

describe ['USA', 'Canada', 'Mexico'] do
  it 'can check for multiple possibilities' do
    expect(subject.sample).to eq('USA').or eq('Canada').or eq('Mexico')
  end
end
