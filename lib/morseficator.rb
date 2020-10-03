# frozen_string_literal: true

require 'morseficator/version'

# Main module
module Morseficator
  class Error < StandardError; end

  autoload :Morse, 'morseficator/morse.rb'
  autoload :Letter, 'morseficator/letter.rb'
  autoload :WordEncoder, 'morseficator/word_encoder.rb'
end
