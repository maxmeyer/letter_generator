# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'letter_generator/version'

Gem::Specification.new do |spec|
  spec.name          = 'letter_generator'
  spec.version       = LetterGenerator::VERSION
  spec.authors       = ['Max Meyer']
  spec.email         = ['dev@fedux.org']
  spec.summary       = 'Generate letters'
  spec.homepage      = 'https://github.com/maxmeyer/letter_generator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'

  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'activesupport'
  spec.add_runtime_dependency 'tilt'
  spec.add_runtime_dependency 'fedux_org-stdlib'
  spec.add_runtime_dependency 'rake'
  spec.add_runtime_dependency 'erubis'
end
