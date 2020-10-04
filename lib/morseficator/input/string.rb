# frozen_string_literal: true

module Morseficator
  module Input
    # String input adapter
    class String
      def initialize(string)
        @string = string
      end

      def map_lines(&block)
        @string.split("\n").map(&block)
      end
    end
  end
end
