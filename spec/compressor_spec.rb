require_relative '../compressor'

describe 'compress' do

  it 'should compress aaaabbbbcccccccccccccccccccc' do
    expect(compress('aaaabbbbcccccccccccccccccccc')).to eq '4a4b9c9c2c'
  end

  it 'should decompress a compressed string to return original' do
    expect(decompress(compress('aabbccc'))).to eq 'aabbccc'
  end

end
