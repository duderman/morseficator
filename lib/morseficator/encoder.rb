# frozen_string_literal: true

module Morseficator
  # Encodes given input and prints it to output
  class Encoder
    def self.encode(*args)
      new(*args).call
    end

    def initialize(input, output)
      @input = input
      @output = output
    end

    def call
      @input.each_line do |line|
        @output << LineEncoder.encode(line)
        @output << "\n"
      end
    end
  end
end
