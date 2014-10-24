# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'count_min_sketch/version'

Gem::Specification.new do |spec|
  spec.name          = "count_min_sketch"
  spec.version       = CountMinSketch::VERSION
  spec.authors       = ["Katie Hoffman"]
  spec.email         = ["ktahoffman@gmail.com"]
  spec.summary       = "Count-Min Sketch implementation that relies on nashby's CityHash gem."
  spec.description   = "Implementation of Graham Cormode and S. Muthu Muthukrishnan's probabilistic sub-linear space streaming algorithm."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency  'cityhash'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
