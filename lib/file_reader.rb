# frozen_string_literal: true

# contains methods to run on provided file contents; received as String
class FileReader
  def initialize(file_contents)
    @file_contents = file_contents
  end

  def count_bytes
    @file_contents.bytesize
  end

  def count_lines
    @file_contents.split("\n").count
  end

  def count_words
    @file_contents.split.count
  end

  def count_characters
    @file_contents.size
  end

  def count_multiple
    "#{count_lines} #{count_words} #{count_bytes}"
  end
end
