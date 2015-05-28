# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intl_phone_picker/version'

Gem::Specification.new do |spec|
  spec.name          = "intl_phone_picker"
  spec.version       = "0.0.2"
  spec.authors       = ["Fabien Dobat\n\n"]
  spec.email         = ["fabien.dobat@gmail.fr"]

  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "https://rubygems.org/gems/intl_phone_picker"
  end

  spec.summary       = %q{Internationalize your tel fields into jQuery numbers pickers}
  spec.description   = %q{IntlPhonePicker is a ruby gem which allow you to change your html5 "tel" fields into jQuery international phone number pickers.}
  spec.homepage      = "https://github.com/SeniorMedia/intl_phone_picker"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "railties", ">= 3.1"
end
