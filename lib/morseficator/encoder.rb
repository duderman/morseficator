# frozen_string_literal: true

module Morseficator
  # Encodes given input and prints it to output
  class Encoder
    def self.encode(*args)
      new(*args).call
    end

    def initialize(input)
      @input = input
    end

    def call
      @input.map_lines { LineEncoder.encode(_1) }.join("\n")
    end
  end
end
