# Often multiple objects will be extremely closely linked, having parent and children objects, objects within a given object's instance variables, and more
# This raises the issue of how you unit test something which relies on other units to operate
# What you can do is test one, whilst emulating any other objects it relies on, allowing you to test each in isolation.

describe 'a random double' do
  it 'only allows define methods to be invoked' do
    # stuntman = double('Mr. Danger', {fall_off_ladder: 'ouch', light_on_fire: true})
    stuntman = double('Mr.danger')
    # allow(stuntman).to receive(:fall_off_ladder).and_return('ouch')
    # allow(stuntman).to receive(:light_on_fire).and_return(true)

    allow(stuntman).to receive_messages(fall_off_ladder: 'ouch', light_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('ouch')
    expect(stuntman.light_on_fire).to be true
  end
end

# The double method (so called because its like an actor double, similar but not identical) allows us to create an object

# Side note - when you provide hash to last argument of method, you dont need to use curly braces
