# frozen_string_literal: true

module Morseficator
  # Encodes a single letter
  class LetterEncoder
    def self.encode(*args)
      new(*args).call
    end

    def initialize(letter)
      @letter = letter
    end

    def call
      Encryptor.encrypt(letter)
    end

    private

    def letter
      @letter.to_s.upcase
    end
  end
end
