require 'run'

RSpec.describe 'run#count_bytes' do
  let(:result) { count_bytes('./data/test.txt') }

  it 'returns an integer' do
    expect(result).to be_an_instance_of(Integer)
  end

  it 'returns the number of bytes in a file' do
    expect(result).to eq(342_190)
  end
end

# test passes when provided file path in run.rb is not from ARGV but from
# file in project or on desktop
