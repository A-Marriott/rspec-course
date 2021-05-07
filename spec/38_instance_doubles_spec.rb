# The drawback of the doubles we've been using is that its up to us to match the methods of the real life class to the double.
# e.g. if we change methods in the real class, we'll have to manually change it for the double

# Verifying double verifies that the interface of a double matches the real class of the object. We really just want the double to be as close an imitiation of the real as possible

class Person
  def a
    sleep(3)
    'hello'
  end
end

describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'hello', b: 20)
      expect(person.b).to eq(20)
      # This is problematic as this isn't a method available to the actual object we're mimicking
    end
  end

  describe 'instance double' do
    it 'can only implement methods defined on the class' do
      person = instance_double(Person, a: 'hello')
      # person = instance_double(Person, a: 'hello', b: 20)
      # This line breaks the code, as we try to implement b which doesn't exist on the class
      # Same thing happens when you input wrong number of arguments

      expect(person.a).to eq('hello')
    end
  end
end
