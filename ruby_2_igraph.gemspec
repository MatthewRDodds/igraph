# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_2_igraph/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_2_igraph"
  spec.version       = Ruby2Igraph::VERSION
  spec.authors       = ["Matthew Dodds"]
  spec.email         = ["matthewrusselldodds@gmail.com"]
  spec.summary       = %q{Igraph for Ruby 2.2.0}
  spec.description   = %q{Igraph for Ruby 2.2.0}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = Dir.glob("ext/**/*.{c,rb}") +
            Dir.glob("lib/**/*.rb")

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.extensions << "ext/ruby_2_igraph/extconf.rb"

  spec.add_development_dependency "bundler", "~> 1.10.6"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_development_dependency "rake-compiler"
end
