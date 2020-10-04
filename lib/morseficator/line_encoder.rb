# frozen_string_literal: true

module Morseficator
  # Encodes a line of text word by word joining the result using a separator
  class LineEncoder
    def self.encode(*args)
      new(*args).call
    end

    SEPARATOR = '/'
    SPLIT_BY = ' '

    def initialize(object)
      @object = object
    end

    def call
      entities.map { encoder.encode(_1) }.join(self.class::SEPARATOR)
    end

    private

    def encoder
      WordEncoder
    end

    def entities
      @object.split(self.class::SPLIT_BY)
    end
  end
end
