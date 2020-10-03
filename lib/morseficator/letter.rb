# frozen_string_literal: true

module Morseficator
  # Represents a single letter of the word
  class Letter
    def initialize(letter)
      @letter = letter
    end

    def encode
      self.class.new(encoded)
    end

    def encode!
      @letter = encoded
      self
    end

    def to_s
      @letter
    end

    def ==(other)
      to_s == other.to_s
    end

    private

    def encoded
      Morse.convert(@letter)
    end
  end
end
