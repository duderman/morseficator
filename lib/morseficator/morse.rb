# frozen_string_literal: true

module Morseficator
  # Converts a single letter to a matching morse code
  module Morse
    LETTERS = {
      'A' => '.-',
      'B' => '-...',
      'C' => '-.-.',
      'D' => '-..',
      'E' => '.',
      'F' => '..-.',
      'G' => '--.',
      'H' => '....',
      'I' => '..',
      'J' => '.---',
      'K' => '-.-',
      'L' => '.-..',
      'M' => '--',
      'N' => '-.',
      'O' => '---',
      'P' => '.--.',
      'Q' => '--.-',
      'R' => '.-.',
      'S' => '...',
      'T' => '-',
      'U' => '..-',
      'V' => '...-',
      'W' => '.--',
      'X' => '-..-',
      'Y' => '-.--',
      'Z' => '--..',
      '0' => '-----',
      '1' => '.----',
      '2' => '..---',
      '3' => '...--',
      '4' => '....-',
      '5' => '.....',
      '6' => '-....',
      '7' => '--...',
      '8' => '---..',
      '9' => '----.'
    }.freeze

    module_function

    def convert(letter)
      raise(Morseficator::Error, "Argument isn't a string") unless letter.is_a?(String)
      raise(Morseficator::Error, 'Only single letters are supported') if letter.length > 1

      return '' if letter.empty?

      LETTERS[letter.to_s] || raise(Morseficator::Error, "Unkonwn letter '#{letter}'")
    end
  end
end
