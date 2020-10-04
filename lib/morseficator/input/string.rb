# frozen_string_literal: true

module Morseficator
  module Input
    # String input adapter
    class String
      def initialize(string)
        @string = string
      end

      def each_line(&block)
        @string.split("\n").each(&block)
      end
    end
  end
end
