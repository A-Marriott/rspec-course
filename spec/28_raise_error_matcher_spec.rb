describe 'raise error matcher' do
  def some_method
    x
  end

  it 'checks for an error' do
    expect { some_method }.to raise_error
  end

  it 'checks for a specific error' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end
end

# The curly brace is needed to let rspec know to expect some kind of error, otherwise you'll just hit the code normally and your test will crash
# Generally bad to just write raise_error, otherwise error can happen for a variety of reasons
