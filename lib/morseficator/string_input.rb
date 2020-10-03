# frozen_string_literal: true

module Morseficator
  # String input adapter
  class StringInput
    def initialize(string)
      @string = string
    end

    def each_line(&block)
      @string.split("\n").each(&block)
    end
  end
end
