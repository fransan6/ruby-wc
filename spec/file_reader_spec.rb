require_relative '../lib/file_reader'

RSpec.shared_examples 'validates_expected_return_type' do
    it 'returns an integer' do
        expect(subject).to be_a(Integer)
    end
end

RSpec.describe FileReader do
    let(:file_contents) { File.read('./data/test.txt') }
    let(:file_reader) { FileReader.new(file_contents) }

    # TESTS OF COUNT_BYTES METHOD
    describe '#count_bytes' do
        let(:result) { file_reader.count_bytes }

        subject { file_reader.count_bytes }
        include_examples 'validates_expected_return_type'

        it 'returns the number of bytes of a file' do
            expect(result).to eq(342_190)
        end
    end

    # TESTS OF COUNT_LINES METHOD
    describe '#count_lines' do
        let(:result) { file_reader.count_lines }

        subject { file_reader.count_lines }
        include_examples 'validates_expected_return_type'

        it 'returns the number of lines in a file' do
            expect(result).to eq(7145)
        end
    end

    # TESTS OF COUNT_WORDS METHOD
    describe '#count_words' do
        let(:result) { file_reader.count_words }

        subject { file_reader.count_words }
        include_examples 'validates_expected_return_type'

        it 'returns the number of words in a file' do
            expect(result).to eq(58_164)
        end
    end

    # TESTS OF COUNT_CHARACTERS METHOD
    describe '#count_characters' do
        let(:result) { file_reader.count_characters }

        subject { file_reader.count_characters }
        include_examples 'validates_expected_return_type'

        it 'returns the number of characters in a file' do
            expect(result).to eq(339_292)
        end
    end

    # TESTS OF COUNT_MULTIPLE METHOD
    describe '#count_multiple' do
        let(:result) { file_reader.count_multiple }

        it 'returns a string' do
            expect(result).to be_an_instance_of(String)
        end

        context 'within the string return' do
            it 'returns three numbers' do
                expect(result.split.count).to be(3)
            end

            it 'returns the number of lines, words and bytes of a file' do
                expect(result).to eq('7145 58164 342190')
            end
        end
    end
end
