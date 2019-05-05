=begin

#EX. 1
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


=begin
  #Hook = a peice of code that runs 
          #automatically at a specific time during the test suite
  #Instance Variable = allows us to 
          #persist information that would normally be lost outside 
          #of a block/ method
=end 


=begin
# EX. 2 (passing)
class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end


RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')            #seperate arguments into their own indivisual test
    expect(card.rank).to eq('Ace')    
  end
  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')    
  end
end
=end

#Regular variables do not persist between the test steps, 
#Instance variable is able to cross the test suite lines.
#DRY it up

=begin
# EX. 2 (refactored)
class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  before do                                                 #Ability to run code prior to the test suit (HOOK)
    @card = Card.new('Ace', 'Spades')                        #seperate arguments into their own indivisual test
  end
  it 'has a rank' do
    @card = Card.new('Ace', 'Spades')                        #seperate arguments into their own indivisual test
    expect(@card.rank).to eq('Ace')    
  end
  it 'has a suit' do
    @card = Card.new('Ace', 'Spades')
    expect(@card.suit).to eq('Spades')    
  end
end
=end


# # EX. 3
# class Card
#   attr_reader :rank, :suit
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
# end

# RSpec.describe Card do
#   def card                                                  #Helper method created
#     Card.new('Ace', 'Spades')
#   end
#   it 'has a rank' do
#     card = Card.new('Ace', 'Spades')                        #seperate arguments into their own indivisual test
#     expect(card.rank).to eq('Ace')    
#   end
#   it 'has a suit' do
#     card = Card.new('Ace', 'Spades')
#     expect(card.suit).to eq('Spades')    
#   end
# end


#   # EX. 3 (refactored)
# class Card
#   attr_accessor :rank, :suit                                   #Attr_accessor gives capability to read/write data
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
# end

# RSpec.describe Card do
#   let(:card) {Card.new('Ace', 'Spades')}                    #'Let' RSpec method for cache data, each test will be reevaluated with a new card. 
#                                                           # Allows argument to be referenced each time its called
#                                                           # 'Let' only runs during the test being performed // only when needed

#   it 'has a rank and that rank can change' do    
#     expect(card.rank).to eq('Ace')    
#     card.rank = "Queen"                                    #Tests that writer method is working as intended
#     expect(card.rank).to eq('Queen')
#   end
#   it 'has a suit' do    
#     expect(card.suit).to eq('Spades')    
#   end
# end

# EX. 3 (personal test)
# class Card
#   attr_accessor :rank, :suit                                   #Attr_accessor gives capability to read/write data
#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
# end

# RSpec.describe Card do
#   let(:card) {Card.new('Ace', 'Spades')}                    #'Let' RSpec method for cache data, each test will be reevaluated with a new card. 
#                                                           # Allows argument to be referenced each time its called
#                                                           # 'Let' only runs during the test being performed
#                                                           # 'let!' = forces the code to run similar to 'before' method

#   it 'has a rank and that rank can change' do    
#     expect(card.rank).to eq('Ace')    
#     card.rank = "Queen"                                    #Tests that writer method is working as intended
#     expect(card.rank).to eq('Queen')
#   end
#   it 'has a suit and that suit can change' do    
#     expect(card.suit).to eq('Spades')    
#     card.suit = 'Hearts'
#     expect(card.suit).to eq('Hearts')
#   end
# end





