# frozen_string_literal: true

require_relative 'lib/morseficator/version'

Gem::Specification.new do |spec|
  spec.name          = 'morseficator'
  spec.version       = Morseficator::VERSION
  spec.authors       = ['Nikolay Norkin']
  spec.email         = ['zduderman@gmail.com']

  spec.summary       = 'Gem that can hide your communications from an enemy'
  spec.description   = 'Takes a message you are willing to send and encrypts
                          it using a top-secret algorithm'
  spec.homepage      = 'https://github.com/duderman/morseficator'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/duderman/morseficator'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = 'morseficator'
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'bundler'
  spec.add_runtime_dependency 'clamp', '~> 1.3'
end
