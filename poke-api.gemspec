# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poke-api/version'

Gem::Specification.new do |spec|
  spec.name          = "poke-api"
  spec.version       = PokeAPI::VERSION
  spec.authors       = ["Andrew Horner"]
  spec.email         = ["andrew@tablexi.com"]
  spec.summary       = %q{A wrapper for the PokéAPI}
  spec.description   = %q{A Ruby wrapper for the PokéAPI (http://pokeapi.co/)}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-vcr"
  spec.add_development_dependency "webmock"

  spec.add_runtime_dependency "httpclient"
  spec.add_runtime_dependency "json"
end
