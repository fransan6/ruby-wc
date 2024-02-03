# frozen_string_literal: true

require_relative './file_reader'

class CLI
  def initialize(option, file)
    @option = option
    @file = file
  end

  def start
    file_to_be_read = FileReader.new
    option_input(file_to_be_read)
  end

  private

  def option_input(file)
    case @option
    when '-c'
      puts file.count_bytes(@file)
    when '-l'
      puts file.count_lines(@file)
    when '-w'
      puts file.count_words(@file)
    else
      # to be implemented with option parser
      puts "Please try again or enter '--help' for more information."
    end
  end
end
