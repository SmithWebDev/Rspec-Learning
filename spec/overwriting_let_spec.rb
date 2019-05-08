class ProgrammingLanguage
                                                      #Anything at a higher level is available at the lower level
                                                      #anything at the lower level is !available at the higher level
  attr_reader :name
  def initialize(name = 'Ruby')
    @name = name
  end
end


RSpec.describe ProgrammingLanguage do
  let(:language) {ProgrammingLanguage.new('Python')}      #Parent defined helper method

  it 'should store the name of the language' do       #Every child will use the parent defined helper method
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do                       #Every child will use the parent defined helper method
    let(:language) {ProgrammingLanguage.new}
                                                      #Defining the exact same helper method && same variable name in 
                                                      #the nested scope. Without variable and helper method, RSpec will 
                                                      #continue to check the outer scope to find the variable that is being requested    
    it 'should default to Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end
end