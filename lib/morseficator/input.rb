module Morseficator
  # Input factory
  module Input
    class Error < Error; end

    autoload :String, 'morseficator/input/string.rb'
    autoload :File, 'morseficator/input/file.rb'

    module_function

    def build(text: nil, file: nil)
      raise(Error, 'Missing an input') unless text || file
      raise(Error, 'Chose either text or file input') if text && file

      if text
        String.new(text)
      else
        File.new(file)
      end
    end
  end
end
