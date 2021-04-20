describe 'before and after hooks' do
  before(:context) do
    puts "I execute once in the entire block"
  end

  before(:example) do
    puts "I execute before every single it statement"
  end

  after(:example) do
    puts "I execute after every single it statement!"
  end

  it 'is just a random example' do
    expect(2 + 2).to eq(4)
  end

  it 'is just another random example' do
    expect(3 - 2).to eq(1)
  end
end
