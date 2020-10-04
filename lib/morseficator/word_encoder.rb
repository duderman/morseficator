# frozen_string_literal: true

module Morseficator
  # Encodes a word letter by letter joining the result using a separator
  class WordEncoder < LineEncoder
    def self.encode(*args)
      new(*args).call
    end

    SEPARATOR = '|'
    SPLIT_BY = ''

    private

    def encoder
      LetterEncoder
    end
  end
end
