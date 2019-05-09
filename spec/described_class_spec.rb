#Described_class gives up a reference to the class that is currently under test
class King
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject {King.new('Boris')}
  let(:louis) {King.new('Louis')}
end

#Should there be a need for updating the class name, 
#Such as switching from King to Royal... Described_class method
#is available. 

RSpec.describe Royal do
  subject {described_class.new('Boris')}
  let(:louis) {described_class.new('Louis')}
  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
  
end