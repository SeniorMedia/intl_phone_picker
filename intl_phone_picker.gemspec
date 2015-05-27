# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intl_phone_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "intl_phone_picker"
  spec.version       = "0.0.1"
  spec.authors       = ["Fabien Dobat\n\n"]
  spec.email         = ["fabien.dobat@seniormedia.fr"]

  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  # spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", "~> 4.2.1"
end
