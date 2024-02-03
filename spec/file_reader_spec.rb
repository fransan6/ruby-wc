require_relative '../lib/file_reader'
# require 'file_reader'

RSpec.describe FileReader do
  let(:file_reader) { FileReader.new }

  describe '#count_bytes' do
    let(:result) { file_reader.count_bytes('./data/test.txt') }
    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of bytes in a file' do
      expect(result).to eq(342_190)
    end
  end

  describe '#count_lines' do
    let(:result) { file_reader.count_lines('./data/test.txt') }
    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of lines in a file' do
      expect(result).to eq(7145)
    end
  end
end
