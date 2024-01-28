#!/usr/bin/env ruby
# run the program from terminal using `./rwc`

_, file = ARGV

# method for determining bytes, not yet taking option into account
def count_bytes(file_path)
  File.size(file_path)
end

puts count_bytes(file)
