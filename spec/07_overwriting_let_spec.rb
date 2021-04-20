require '07_overwriting_let'

describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'should return the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should default to ruby as the language name' do
      expect(language.name).to eq('Ruby')
    end
  end
end


# Here we repeat the let statement within the nested scope, which means we can reuse language let statement. This helps segment/isolate our code within each scope.
