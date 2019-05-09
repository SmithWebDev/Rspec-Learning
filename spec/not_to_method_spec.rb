RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).to eq(5)
    expect(4).not_to eq(5)
  end
end 