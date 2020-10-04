# frozen_string_literal: true

module Morseficator
  module Input
    # Represents a file input
    class File
      def initialize(file)
        @file = file
      end

      def each_line(&block)
        file.each_line { block.call(_1.chomp) }
      end

      private

      def file
        ::File.open(@file, 'r')
      rescue Errno::ENOENT
        raise(Morseficator::Input::Error, "File '#{@file}' wasn't found")
      rescue Errno::EACCES
        raise(Morseficator::Input::Error, "Don't have access to a file '#{@file}'")
      rescue StandardError
        raise(Morseficator::Input::Error, "Can't open file '#{@file}'")
      end
    end
  end
end
