# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sampler/version'

Gem::Specification.new do |spec|
  spec.name          = "sampler"
  spec.version       = Sampler::VERSION
  spec.authors       = ["Eval Air"]
  spec.email         = ["pkuimehyd@163.com"]
  spec.summary       = %q{A sampler simulating multinomial sampling}
  spec.description   = %q{A sampler simulating multinomial sampling}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
