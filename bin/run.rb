# frozen_string_literal: true

#!/usr/bin/env ruby

require_relative '../lib/cli'

option, file = ARGV

cli = CLI.new(option, file)
cli.start
