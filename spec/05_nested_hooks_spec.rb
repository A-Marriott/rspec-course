describe 'nested hooks' do
  before(:context) do
    puts "OUTER before context"
  end

  before(:example) do
    puts "OUTER before example"
  end

  it 'should do basic maths' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts "INNER before context"
    end

    before(:example) do
      puts "INNER before example"
    end

    it 'does more basic maths' do
      expect(2 - 2).to eq(0)
    end

    it 'does more basic maths' do
      expect(2 + 2).to eq(4)
    end
  end
end

# The outer example runs before the inner examples in the nested block

# The point of nesting contexts (sometimes multiple levels deep) is to keep our code DRY. We can use hooks to execute code but only for the blocks we're interested in
