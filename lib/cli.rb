# frozen_string_literal: true

require_relative './file_reader'

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
    when '-c'
      puts @file_reader.count_bytes(@file)
    when '-l'
      puts @file_reader.count_lines(@file)
    when '-w'
      puts @file_reader.count_words(@file)
    else
      # to be implemented with option parser
      puts "Please try again or enter '--help' for more information."
    end
  end
end
