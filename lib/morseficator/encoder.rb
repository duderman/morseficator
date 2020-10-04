# frozen_string_literal: true

module Morseficator
  # Encodes given input and prints it to output
  class Encoder
    def self.encode(*args)
      new(*args).call
    end

    def initialize(input)
      @input = input
      @result = +''
    end

    def call
      @input.each_line do |line|
        @result << LineEncoder.encode(line) << "\n"
      end
      @result
    end
  end
end
