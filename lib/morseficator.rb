# frozen_string_literal: true

require 'morseficator/version'

# Main module
module Morseficator
  class Error < StandardError; end
  class InputError < Error; end

  autoload :Encryptor, 'morseficator/encryptor.rb'
  autoload :LetterEncoder, 'morseficator/letter_encoder.rb'
  autoload :WordEncoder, 'morseficator/word_encoder.rb'
  autoload :LineEncoder, 'morseficator/line_encoder.rb'
  autoload :Encoder, 'morseficator/encoder.rb'
  autoload :StringInput, 'morseficator/string_input.rb'
  autoload :FileInput, 'morseficator/file_input.rb'

  module_function

  def run(text: nil, file: nil)
    raise(Morseficator::InputError, 'Missing an input') unless text || file
    raise(Morseficator::InputError, 'Chose either text or file input') if text && file

    input = if text
              StringInput.new(text)
            else
              FileInput.new(file)
            end

    Encoder.encode(input)
  end
end
