RSpec.describe '#even? method' do                             #simplify the test, instead of including the conditional in the test, 
                                                              #set up a nested test for the conditional then run test for boolean
  # it 'should return true if the number is even' do          
    
  # end
  # it 'should return false if the number is odd' do
    
  # end
                                                              # describe = context
  describe 'with even number' do                             
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end