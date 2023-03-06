# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)
require "enuminator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "enuminator"
  spec.version     = Enuminator::VERSION
  spec.authors     = ["Walmir Neto"]
  spec.email       = ["owalmirneto@gmail.com"]
  spec.homepage    = "http://github.com/owalmirneto/enuminator"
  spec.summary     = "Enuminator is a extension for gem enumerate_it"

  spec.required_ruby_version = ">= 2.7"

  spec.files = Dir["{lib}/**/*"] + ["Rakefile", "README.md"]

  spec.add_dependency "enumerate_it", ">= 3.2.4"
  spec.add_dependency "rails", ">= 3.1"

  spec.metadata["rubygems_mfa_required"] = "true"
end
