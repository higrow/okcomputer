# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okcomputer/version'

AUTHORS = {
  "Patrick Byrne" => "code@patrickbyrne.net"
}

Gem::Specification.new do |gem|
  gem.name          = "okcomputer"
  gem.version       = OKComputer::VERSION
  gem.authors       = AUTHORS.keys
  gem.email         = AUTHORS.values
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency("actionpack")

  gem.add_development_dependency("rake")
  gem.add_development_dependency("rspec")
end