# frozen_string_literal: true

# contains methods to run on provided file
class FileReader
  def initialize(file_path)
    @file_path = file_path
  end

  def count_bytes
    File.size(@file_path)
  end

  def count_lines
    File.readlines(@file_path).count
  end

  def count_words
    File.read(@file_path).split.count
  end

  def count_characters
    File.readlines(@file_path).join.length
  end
end
