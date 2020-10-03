# frozen_string_literal: true

require 'morseficator/version'

# Main module
module Morseficator
  class Error < StandardError; end

  autoload :Encryptor, 'morseficator/encryptor.rb'
  autoload :LetterEncoder, 'morseficator/letter_encoder.rb'
  autoload :WordEncoder, 'morseficator/word_encoder.rb'
  autoload :LineEncoder, 'morseficator/line_encoder.rb'
  autoload :Encoder, 'morseficator/encoder.rb'
  autoload :StringInput, 'morseficator/string_input.rb'
end
