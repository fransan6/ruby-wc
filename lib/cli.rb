# frozen_string_literal: true

require_relative 'file_reader'

class CLI
  def initialize(option, file)
    @option = option
    @file = file
  end

  def start
    @file = read_file
    @file_reader = FileReader.new(@file)
    option_input
  end

  private

  def option_input
    case @option
    when '-c' then puts @file_reader.count_bytes
    when '-l' then puts @file_reader.count_lines
    when '-w' then puts @file_reader.count_words
    when '-m' then puts @file_reader.count_characters
    when nil then puts @file_reader.count_multiple
    else puts "We do not recognise that option. Please try again with either '-c', '-l', '-w', '-m' \
or you may leave the option blank."
    end
  end

  def read_file
    if @file.nil?
      $stdin.read
    elsif File.exist?(@file) && File.file?(@file)
      File.read(@file)
    else
      check_file
    end
  end

  def check_file
    raise 'File not found.' unless File.exist?(@file)
    raise 'Path does not point to a regular file.' unless File.file?(@file)
  end
end
