describe 'change matcher' do
  subject { [1, 2, 3] }

  it 'checks that the object changes state' do
    expect { subject.push(4) }.to change { subject.length }.from(3).to(4)
    expect { subject.push(4) }.to change { subject.length }.by(1)
  end
end

# We put valid ruby code in the expect block.
# Second syntax is nicer as more flexible test
# Often used to check if something saved to database has actually saved properly (increment one)
