#!/usr/bin/env ruby
# run the program from terminal using `./rwc`

# implement method for determining bytes, not yet taking option into account

_, file = ARGV

def count_bytes(file_path)
  File.size(file_path)
end

puts count_bytes(file)
