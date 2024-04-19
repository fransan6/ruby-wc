#!/usr/bin/env ruby

require_relative '../lib/cli'

option, file = ARGV

if ARGV.count == 1 && !option.start_with?('-')
	file = option
	option = nil
end

cli = CLI.new(option, file)
cli.start
