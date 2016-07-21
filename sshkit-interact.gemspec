# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sshkit/interact/version'

Gem::Specification.new do |spec|
  spec.name          = 'sshkit-interact'
  spec.version       = SSHKit::Interact::VERSION
  spec.authors       = ['Florian Schwab']
  spec.email         = ['me@ydkn.de']

  spec.summary       = %q{Interactive command execution for SSHKit}
  spec.description   = %q{Interactive command execution for SSHKit}
  spec.homepage      = 'https://github.com/ydkn/sshkit-interact'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sshkit', '~> 1.11'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
