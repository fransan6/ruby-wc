# frozen_string_literal: true

# contains methods to run on provided file
class FileReader
  def count_bytes(file_path)
    File.size(file_path)
  end

  def count_lines(file_path)
    File.readlines(file_path).count
  end
end
