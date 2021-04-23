require '26_have_attributes_matcher'

describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Bob', 'Fatality') do
    it 'checks for object attributes and proper values' do
      expect(subject).to have_attributes(name: 'Bob', finishing_move: 'Fatality')
    end
  end
end
