# frozen_string_literal: true

module Morseficator
  # Encodes a line of text word by word joining the result using a separator
  class LineEncoder
    def self.encode(*args)
      new(*args).call
    end

    WORD_SEPARATOR = '/'

    def initialize(line)
      @line = line
    end

    def call
      words.map { WordEncoder.encode(_1) }.join(WORD_SEPARATOR)
    end

    private

    def words
      @line.split(' ')
    end
  end
end
