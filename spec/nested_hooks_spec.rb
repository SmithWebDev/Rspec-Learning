RSpec.describe 'nested hook' do
# parent hook performed first
# parent hook will work with each child/ nested hook (:example)


  before(:context) do  
    puts 'Outer Before context (parent)'
  end
  before(:example) do  
    puts 'Outer Before example (parent)'
  end
  
  it 'does basic math' do
    expect(2+2).to eq(4)
    puts 'does basic math'
  end  

  context 'with Condition A' do
    before(:context) do  
      puts 'Inner Before context (child)'
    end
    before(:example) do  
      puts 'Inner Before example (child)'
    end
    it 'does more basic math' do
      expect(2+1).to eq(3)
      puts 'does more basic math'
    end 
    it 'does some more basic math' do
      expect(5+1).to eq(6)
      puts 'does some more basic math'
    end 

  end
end