#another reason to use 'subject' helper method over a 'let' method

RSpec.describe 'shorthand syntax' do
  subject {5}
  
  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  #Lines 6- 10 are exactly the same as lines 14-16

  context 'with one-liner syntax' do
    #it 'is_expected' is specifically going to reference the above subject
    it { is_expected.to eq (5)}
  end
end


