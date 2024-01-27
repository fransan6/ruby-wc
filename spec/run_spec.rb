require_relative '../bin/run'

RSpec.describe 'run#count_bytes' do
  it 'returns number of bytes in a file' do
    result = count_bytes('./data/test.txt')
    expect(result).to eq(342_190)
  end
end

# test passes when provided file path in run.rb is not from ARGV but from
# file in project or on desktop
