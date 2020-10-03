# frozen_string_literal: true

module Morseficator
  # Converts a single letter to a matching morse code
  module Encryptor
    CYPHER = {
      'A' => '1a',
      'B' => 'a3',
      'C' => 'a1a1',
      'D' => 'a2',
      'E' => '1',
      'F' => '2a1',
      'G' => 'b1',
      'H' => '4',
      'I' => '2',
      'J' => '1c',
      'K' => 'a1a',
      'L' => '1a2',
      'M' => 'b',
      'N' => 'a1',
      'O' => 'c',
      'P' => '1b1',
      'Q' => 'b1a',
      'R' => '1a1',
      'S' => '3',
      'T' => 'a',
      'U' => '2a',
      'V' => '3a',
      'W' => '1b',
      'X' => 'a2a',
      'Y' => 'a1b',
      'Z' => 'b2',
      '0' => 'e',
      '1' => '1d',
      '2' => '2c',
      '3' => '3b',
      '4' => '4a',
      '5' => '5',
      '6' => 'a4',
      '7' => 'b3',
      '8' => 'c2',
      '9' => 'd1'
    }.freeze

    module_function

    def encrypt(letter)
      raise(Morseficator::Error, "Argument isn't a string") unless letter.is_a?(String)
      raise(Morseficator::Error, 'Only single letters are supported') if letter.length > 1

      return '' if letter.empty?

      CYPHER[letter.to_s] || raise(Morseficator::Error, "Unkonwn letter '#{letter}'")
    end
  end
end
