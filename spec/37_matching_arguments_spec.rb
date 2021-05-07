# We have previously returned a set number of responses in allow statements, but maybe we want to change this based on how many args they provide.

describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    three_element_array = double

    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 3])
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 3, 5])
  end
end
