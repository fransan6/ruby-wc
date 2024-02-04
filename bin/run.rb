#!/usr/bin/env ruby

require_relative '../lib/cli'

option, file = ARGV

# accommodate if only the file_path is entered
# no need to check if the one ARGV is an option, as it will be saved as such
if ARGV.count == 1 && !option.start_with?('-')
  file = option
  option = nil
end

cli = CLI.new(option, file)
cli.start
