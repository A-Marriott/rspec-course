# Previously we used allow to create fake methods for double
# But can also use allow to replace current existing methods on objects, returning values of your choosing

describe 'allow method review' do
  it 'can stub methods on a real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)

    expect(arr.sum).to eq(10)
  end
end
