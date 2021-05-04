class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    'Call my agent, no way'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
      actor.act
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# puts movie.start_shooting

# The problem with all of this is we want to test a movie in isolation without initializing an actor
# In reality the specifics of how actor returns a response is irrelevant to the logic of the movie class.
# So when we test movies, we want to assume that we're returned something from actor, regarldess of how that occurs

describe Movie do
  let(:stuntman) { double('Mr. Danger', ready?: true, act: 'I love you, baby', fall_off_ladder: 'Lets do it', light_on_fire: 'True') }
  # It really doesn't matter how it returns though, if we were to start wanting to question how actor returns these values, then we're wandering into the realm of unit testing actor instead
  subject { described_class.new(stuntman) }

  describe '#start_shotting' do
    it 'expects an actor to do 3 actions' do
      expect(stuntman).to receive(:ready?).once
      expect(stuntman).to receive(:act).exactly(2).times
      expect(stuntman).to receive(:fall_off_ladder).at_least(1).times
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      subject.start_shooting
    end
  end
end

# Using double has advantages not only for isolating movie, but getting rid of heavy computational methods (e.g. how ready? causes a pause of 3 seconds)





















