describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'without strict equality' do
    it 'a and b should match' do
      expect(a).to eq(b)
    end
  end

  describe 'with strict equality' do
    it 'a and b should not match' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).not_to equal(d)
      expect(c).to be(e)
    end
  end
end


# when we check equality, we check that two things are equal in design. That they're the same object in memory
# e.g. we build two houses identically in design. They're equal in design completely, but they're not the same object.
# the variable name is like the address, and the object is the design.
# c and d are equal, but not identical. They point to two different places in memory

# be == equal. be kind of makes more sense lexically.

# 1. unstrict equality
# 2. strict equality
# 3. identity
