require '11_described_class'

describe King do
  subject { described_class.new('Steven') }

  it 'should return steven as its name' do
    expect(subject.name).to eq('Steven')
  end
end

# Here we used described class instead of explicitly writing out King.new. This means our tests are more generalised to whatever class name we pass as the subject.
