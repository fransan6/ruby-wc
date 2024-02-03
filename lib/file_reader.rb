# frozen_string_literal: true

# contains methods to run on provided file
class FileReader
  def count_bytes(file_path)
    File.size(file_path)
  end
end
