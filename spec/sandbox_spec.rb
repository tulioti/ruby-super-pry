require_relative '../sandbox.rb'

describe 'factorial tests: ' do

  it 'returns 6 for 3!' do
    expect(factorial(3)).to eq(6)
  end

  it 'returns 24 for 4!' do
    expect(factorial(4)).to eq(24)
  end

  it 'returns 1 for 0!' do
    expect(factorial(0)).to eq(1)
  end

  it 'prompts for positive integer given negative inputs' do
    expect(factorial(-2)).to eq('please put in a positive integer')
  end

end
