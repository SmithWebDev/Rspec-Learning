=begin
class Card              #Needs Class/Content to begin initialization
  attr_reader :type      #Defines an automatic read method... apply data argument
  def initialize(type)  #explains the argument being presented
    @type = type        #Create the object receiving method 
  end
end



RSpec.describe Card do                                #Always reference the class or mehod being tested, not a matching label
  it 'has a type' do
    card = Card.new('Ace of Spades')
    expect(card.type).to eq('Ace of Spades')
  end
end
=end

class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')  #seperate arguments into their own indivisual test
    expect(card.rank).to eq('Ace')    
  end
  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')    
  end
end