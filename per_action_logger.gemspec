# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'per_action_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "per_action_logger"
  spec.version       = PerActionLogger::VERSION
  spec.authors       = ["Leszek Andrukanis"]
  spec.email         = ["andrukanisleszek@gmail.com"]
  spec.description   = %q{Adds support for logging specific Rails action to separated log files }
  spec.summary       = %q{Support for logging specific Rails action to separated log files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ['lib/per_action_logger/version.rb', 'lib/per_action_logger.rb', 'lib/per_action_logger/logger.rb']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
