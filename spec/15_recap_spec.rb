# By default, what will subject equal?

'subject is equal to whatever is declared after describe/context'

# How do you define a custom subject? Provide a code example.

describe String do
  subject(:silly_string) { 'Crazy' }
end

# How does the described_class helper method work? What is the advantage of using it over writing the class name out?

'Described class means you inherit whatever class is provided in the describe method, so your code is more flexible if you want to change the class name'

# Write an RSpec test for an array with 2 elements.


# Declare the subject to be [1, 2].

# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].

# Write an example that uses the one-liner is_expected syntax.

describe Array do
  subject { [1, 2] }

  it 'should have a length of two' do
    expect(subject).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end

# What's the difference between include_examples and include_context?

'include examples refers to reusing it statements (with subject). Inlcude context allows you to create shared let statements, before statements, methods, etc.'
