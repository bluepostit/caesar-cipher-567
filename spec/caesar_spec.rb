require_relative '../caesar'

describe '#encrypt' do
  it 'returns a string of the same length' do
    sample = 'test message'
    result = encrypt(sample)
    expect(result.length).to eq(sample.length)
  end

  it "returns the 3-letter backward-shifted text" do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
