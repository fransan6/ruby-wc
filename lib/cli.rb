# frozen_string_literal: true

require_relative 'file_reader'

class CLI
	OPTIONS = {
		'-c' => :count_bytes,
		'-l' => :count_lines,
		'-w' => :count_words,
		'-m' => :count_characters
	}.freeze

	def initialize(option, file)
		@option = option
		@file = file
	end

	def start
		@file = read_file
		@file_reader = FileReader.new(@file)
		option_input
	end

		private

	def option_input
		if OPTIONS.keys.include?(@option)
			puts @file_reader.send(OPTIONS[@option])
		elsif @option.nil?
			puts @file_reader.count_multiple
		else
			puts "Please try again with either '-c', '-l', '-w', '-m' or you may leave the option blank"
		end
	end

	def read_file
		if @file.nil?
			$stdin.read
		else
			begin
				File.read(@file)
			rescue StandardError => e
				puts style_error_message(e.message)
				exit(1)
			end
		end
	end

	def style_error_message(error_message)
		divided_message = error_message.split(/[@-]/).map(&:strip)
		"ERROR: #{divided_message[0]} - #{divided_message[-1]}"
	end
end
