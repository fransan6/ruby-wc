# frozen_string_literal: true

require_relative 'file_reader'

class CLI
  def initialize(option, file)
    @option = option
    @file = file
    @file_reader = FileReader.new
  end

  def start
    option_input
  end

  private

  def option_input
    case @option
    when '-c' then puts @file_reader.count_bytes(@file)
    when '-l' then puts @file_reader.count_lines(@file)
    when '-w' then puts @file_reader.count_words(@file)
    when '-m' then puts @file_reader.count_characters(@file)
      # to be implemented with option parser
    else puts "Please try again or enter '--help' for more information."
    end
  end
end
