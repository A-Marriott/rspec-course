shared_context 'common' do
  before do
    @food = []
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
    expect(@food).to eq([])
  end
end

