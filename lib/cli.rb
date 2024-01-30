require_relative './file_reader'

class CLI
  def initialize(option, file)
    @option = option
    @file = file
  end

  def start
    file_to_be_read = FileReader.new
    puts file_to_be_read.count_bytes(@file)
  end
end
