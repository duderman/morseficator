# frozen_string_literal: true

require 'morseficator/version'

module Morseficator
  class Error < StandardError; end

  autoload :Morse, 'morseficator/morse.rb'
end
