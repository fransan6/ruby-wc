require_relative '../lib/file_reader'

RSpec.describe FileReader do # rubocop:disable Metrics/BlockLength
  let(:file_reader) { FileReader.new('./data/test.txt') }

  describe '#count_bytes' do
    let(:result) { file_reader.count_bytes }

    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of bytes in a file' do
      expect(result).to eq(342_190)
    end
  end

  describe '#count_lines' do
    let(:result) { file_reader.count_lines }

    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of lines in a file' do
      expect(result).to eq(7145)
    end
  end

  describe '#count_words' do
    let(:result) { file_reader.count_words }

    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of words in a file' do
      expect(result).to eq(58_164)
    end
  end

  describe '#count_characters' do
    let(:result) { file_reader.count_characters }

    it 'returns an integer' do
      expect(result).to be_an_instance_of(Integer)
    end

    it 'returns the number of characters in a file' do
      expect(result).to eq(339_292)
    end
  end
end
