class SausageLink
  def length
    3
  end
end

shared_examples 'a ruby object with three elements' do
  it 'should return length 3' do
    expect(subject.length).to eq(3)
  end
end

describe Array do
  subject { [1, 2, 3] }

  include_examples 'a ruby object with three elements'
end

describe String do
  subject { 'abc' }

  include_examples 'a ruby object with three elements'
end

describe Hash do
  subject { { a: 1, b: 2, c: 3 } }

  include_examples 'a ruby object with three elements'
end

describe SausageLink do
  include_examples 'a ruby object with three elements'
end

# We can used shared examples to keep our code dry.
# Bear in mind you would put the shared example in a seperate file and call it where you need it (and likewise each of these tests on different objects would be in seperate files)
# The shared example string should be generic
