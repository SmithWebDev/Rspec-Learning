RSpec.describe Hash do                 #Use class instead of string...  
                                      #Whatever class passed into the describe method will receive the instantiation
                                      #When testing a class its better to pass in the class itself instead of the string. 

  # let(:my_hash) { {} }                  #Rspec method 'subject' will take the Class ('Hash') and instantiate an object from it

  #let(:subject) {Hash.new}               #Representative of what 'subject does behind the scenes
  
  # it 'should start off empty' do       
  #   puts subject
  #   puts subject.class
  #   expect(subject.length).to eq(0)
  # end

  it 'should start off empty' do       
    expect(subject.length).to eq(0)
    subject[:some_key] = 'Some Value'
    expect(subject.length).to eq(1)

  end
  
  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end