# frozen_string_literal: true

module Morseficator
  # Represents a file input
  class FileInput
    def initialize(file)
      @file = file
    end

    def each_line(&block)
      file.each_line { block.call(_1.strip) }
    end

    private

    def file
      File.open(@file, 'r')
    rescue Errno::ENOENT
      raise(Morseficator::InputError, "File '#{@file}' wasn't found")
    rescue Errno::EACCES
      raise(Morseficator::InputError, "Don't have access to a file '#{@file}'")
    rescue StandardError
      raise(Morseficator::InputError, "Can't open file '#{@file}'")
    end
  end
end
