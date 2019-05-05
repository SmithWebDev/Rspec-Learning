RSpec.describe 'before and after hooks' do
#Before and After hooks allow for each test to apphend or reverse an object beack to the original state
# :context = Entire test suite becomes child element
# :example = Each test receives before/after block

  before(:context) do  
    puts 'Before context'
  end
  
  after(:context) do  
    puts 'After context'
  end

  #//////////////////////////////////////////

  before(:example) do  
    puts 'Before example'
  end

  after(:example) do  
    puts 'After example'
  end
  

  it 'is just a random example' do
    expect(5*4).to eq(20)
  end

  it 'is just another random example' do
    expect(3-2).to eq(1)
  end
end


