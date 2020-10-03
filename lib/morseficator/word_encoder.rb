# frozen_string_literal: true

module Morseficator
  # Encodes a word letter by letter joining the result using a separator
  class WordEncoder
    def self.encode(*args)
      new(*args).call
    end

    LETTER_SEPARATOR = '|'

    def initialize(word)
      @word = word
    end

    def call
      letters.map { LetterEncoder.encode(_1) }.join(LETTER_SEPARATOR)
    end

    private

    def letters
      @word.split('')
    end
  end
end
