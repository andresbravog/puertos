# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puertos/version'

Gem::Specification.new do |spec|
  spec.name          = "puertos"
  spec.version       = Puertos::VERSION
  spec.authors       = ["Raul Galindo"]
  spec.email         = ["rgalindo33@hotmail.com"]
  spec.summary       = %q{Forecast swell information for Barcelona}
  spec.description   = %q{simple ruby gem that fetches the forecast swell data for Barcelona from Puertos del Estado}
  spec.homepage      = "https://github.com/rgalindo33/puertos"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "nokogiri"
end
